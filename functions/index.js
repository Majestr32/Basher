const functions = require("firebase-functions");
const stripe = require("stripe")(process.env.STRIPE_SECRET_KEY);

const admin = require("firebase-admin");
// Initialize Firebase Admin SDK
admin.initializeApp({
  credential: admin.credential.applicationDefault(),
  // Add other Firebase configurations as needed
});

const firestore = admin.firestore();

const express = require("express");

const app = express();

app.get("/weekly-earnings", async (req, res) => {
  try {
    const today = new Date();
    const oneWeekAgo = new Date(today.getTime() - 7 * 24 * 60 * 60 * 1000);

    const chargesWeekly = await stripe.charges.list({
      created: {
        gte: Math.floor(oneWeekAgo / 1000), // Convert to Unix timestamp
        lte: Math.floor(today / 1000), // Convert to Unix timestamp
      },
    }, {
      stripeAccount: req.query["connected_account"],
    });

    const dailyEarnings = {};

    chargesWeekly.data.forEach((charge) => {
      const chargeDate = new Date(charge.created * 1000).toDateString();
      if (dailyEarnings[chargeDate]) {
        dailyEarnings[chargeDate] += charge.amount;
      } else {
        dailyEarnings[chargeDate] = charge.amount;
      }
    });

    const weeklyEarnings = Object.entries(dailyEarnings).map(
        ([date, amount]) => ({
          date,
          amount,
        }));

    // Charges details

    let totalCharges = 0;
    let totalAmount = 0;
    let hasMoreCharges = true;
    let startingAfter;

    while (hasMoreCharges) {
      const options = {limit: 100, starting_after: startingAfter};
      const charges = await stripe.charges.list(options, {
        stripeAccount: req.query["connected_account"],
      });
      totalAmount += charges.data.reduce(
          (acc, charge) => acc + charge.amount, 0);

      totalCharges += charges.data.length;


      if (charges.has_more) {
        startingAfter = charges.data[charges.data.length - 1].id;
      } else {
        hasMoreCharges = false;
      }
    }

    res.json({weeklyEarnings,
      charges_count: totalCharges,
      total_amount: totalAmount,
    });
  } catch (error) {
    console.error("Error fetching weekly earnings:", error);
    res.status(500).json({error: "Failed to fetch weekly earnings"});
  }
});

app.post("/users/:uid", async (req, res) => {
  try {
    const uid = req.params.uid;
    await admin.auth().deleteUser(uid);
    await firestore.collection("users").doc(uid).delete();
    res.send({message: "Successfully removed!"});
  } catch (e) {
    res.status(500).send({error: "Error deleting user."});
  }
});

/** Stripe connect generate link **/
app.post("/account_links", async (req, res) => {
  try {
    const accountLinks = await stripe.accountLinks.create({
      account: req.body["account_id"],
      refresh_url: "https://google.com",
      return_url: "https://google.com",
      type: "account_onboarding",
    });
    res.send(accountLinks);
  } catch (error) {
    console.error(error);
    res.status(500).send(error);
  }
});

/** Stripe connect registration **/
app.post("/accounts", async (req, res) => {
  try {
    const account = await stripe.accounts.create({
      type: "standard",
      email: req.body["email"],
    });
    res.send(account);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        {error: "Failed to create the Stripe Connect account"});
  }
});

/** Gets Stripe connect account by id **/
app.get("/accounts/:id", async (req, res) => {
  try {
    const account = await stripe.accounts.retrieve(req.params.id);
    res.send(account);
  } catch (error) {
    res.status(500).send(
        {error: "Failed to find connected account by id"});
  }
});


// --- In-App Payment ---

// Create Payment Intent to organiser
app.post("/payment_intents", async (req, res) => {
  try {
    const totalAmount = req.body["amount"];
    const paymentIntent = await stripe.paymentIntents.create(
        {
          amount: totalAmount,
          application_fee_amount: parseInt(totalAmount * 0.1 + 30, 10),
          currency: req.body["currency"],
          customer: req.body["customer"],
          description: req.body["description"],
          payment_method: req.body["payment_method"],
          receipt_email: req.body["receipt_email"],
          transfer_data: {
            destination: req.body["destination_account"],
          },
        });
    res.send(paymentIntent);
  } catch (error) {
    console.error(error);
    res.status(500).send(error);
  }
});

// Create source
app.post("/sources", async (req, res) => {
  try {
    const totalAmount = req.body["amount"];
    const source = await stripe.sources.create(
        {
          type: "card",
          amount: totalAmount,
          token: req.body["token"],
        });
    res.send(source);
  } catch (error) {
    console.error(error);
    res.status(500).send(error);
  }
});

// Confirm payment
app.post("/payment_intents/:id/confirm", async (req, res) => {
  try {
    const paymentIntentId = req.params.id;
    const paymentMethod = req.body["payment_method"];
    const paymentIntent = await stripe.paymentIntents.confirm(paymentIntentId,
        {payment_method: paymentMethod});
    res.send(paymentIntent);
  } catch (error) {
    console.error(error);
    res.status(500).send({error: "Failed to confirm payment"});
  }
});

// --- Organiser Payouts Managment ---

// Request payout
app.post("/payouts", async (req, res) => {
  try {
    const payout = await stripe.payouts.create(
        {
          amount: req.body["amount"],
          currency: req.body["currency"],
        }, {stripeAccount: req.body["connected_account"]});
    res.send(payout);
  } catch (error) {
    console.error(error);
    res.status(500).send({error: "Inefficient balance"});
  }
});

// Get payouts balance
app.get("/balance", async (req, res) => {
  try {
    const balance = await stripe.balance.retrieve(
        {stripeAccount: req.query["connected_account"]});
    res.send(balance);
  } catch (error) {
    console.error(error);
    res.status(500).send({error: "Failed to get balance"});
  }
});

// Get payout history
app.get("/payouts", async (req, res) => {
  try {
    const payouts = await stripe.payouts.list({
      limit: req.query["limit"],
      starting_after: req.query["starting_after"],
    }, {stripeAccount: req.query["connected_account"]});
    res.send(payouts);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        {error: "Failed to get payouts"});
  }
});

// --- Customer Managment ---

/** Gets Customer by email **/
app.get("/customers", async (req, res) => {
  try {
    const account = await stripe.customers.list({email: req.query["email"]});
    if (account["data"].length == 0) {
      account["data"].push(await stripe.customers.create({
        email: req.query["email"],
      }));
    }
    res.send(account);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        {error: "Failed to find customer by email"});
  }
});

/** Creates Customer with email **/
app.post("/customers", async (req, res) => {
  try {
    const account = await stripe.customers.create({
      email: req.body["email"],
    });

    res.send(account);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        {error: "Failed to create customer"});
  }
});

// --- Customer Cards Managment ---

// Get customer payment cards
app.get("/customers/:id/payment_methods", async (req, res) => {
  const customerId = req.params.id;
  const type = "card";
  try {
    const paymentMethods = await stripe.paymentMethods.list(
        {customer: customerId, type: type});
    res.send(paymentMethods);
  } catch (error) {
    res.status(500).send({
      "error": "Failed fetch customer payment methods",
    });
  }
});

// Remove customer payment card
app.post("/payment_methods/detach", async (req, res) => {
  const paymentMethodId = req.body["payment_method_id"];
  try {
    await stripe.paymentMethods.detach(paymentMethodId);

    res.status(200).send({
      payment_method_id: paymentMethodId,
      operation: "detach",
      success: true,
    });
  } catch (error) {
    res.status(500).send({
      payment_method_id: paymentMethodId,
      operation: "detach",
      success: false,
    });
  }
});

// Add customer payment card
app.post("/payment_methods/attach", async (req, res) => {
  try {
    const paymentMethod = await stripe.paymentMethods.create({
      type: "card",
      card: {
        number: req.body["number"],
        exp_month: req.body["exp_month"],
        exp_year: req.body["exp_year"],
        cvc: req.body["cvc"],
      },
      billing_details: {
        name: req.body["holder"],
      },
    });

    const paymentMethodId = paymentMethod.id;
    await stripe.paymentMethods.attach(paymentMethodId,
        {customer: req.body["customer_id"]});

    res.send(paymentMethod);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        error);
  }
});

// Create payment method
app.post("/payment_methods/token", async (req, res) => {
  try {
    const paymentMethod = await stripe.paymentMethods.create({
      type: "card",
      card: {
        token: req.body["token"],
      },
    });

    res.send(paymentMethod);
  } catch (error) {
    console.error(error);
    res.status(500).send(
        {error: "Payment card is not valid"});
  }
});

app.get("/hi", async (req, res) => {
  const name = req.query.name;
  res.send(`Hello ${name}`);
});

exports.apis = functions.https.onRequest(app);
