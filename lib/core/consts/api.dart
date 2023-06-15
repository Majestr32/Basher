class ApiEndpoints{

  ///Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/accounts/acct_1N7xIdAcfnLQvUhx
  ///    {
  ///     "email": "vladik11042002v@gmail.com"
  ///    }
  ///
  static const createOrganiserAccount = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/accounts';

  ///Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/accounts/acct_1N7xIdAcfnLQvUhx
  static const getOrganiserAccountById = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/accounts';

  ///Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payouts?connected_account=acct_1N7xIdAcfnLQvUhx
  static const listAccountPayouts = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payouts';

  ///Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/balance?connected_account=acct_1N7xIdAcfnLQvUhx
  static const getAccountBalance = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/balance';

  ///Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/account_links
  ///{
  ///     "account_id": "acct_1N7xIdAcfnLQvUhx"
  ///}
  static const createAccountLink = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/account_links';

  ///Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payouts
  /// {
  ///     "amount": 100,
  ///     "currency": "usd",
  ///     "connected_account": "acct_1N7xIdAcfnLQvUhx"
  /// }
  static const payoutAccount = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payouts';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/token
  /// {
  ///     "token": "tok_1NA8LBAYiDFblkMTOoXafR1Q"
  /// }
  static const createPaymentMethodFromToken = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/token';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_intents
  /// {
  ///     "amount": 500,
  ///     "currency": "usd",
  ///     // "customer": "cus_NtryRcVqmOulur",
  ///     "payment_method": "pm_1NA8LXAYiDFblkMTrcyxmcG6",
  ///     "description": "Ticket VIP payment",
  ///     "receipt_email": "vladik11042002v@gmail.com",
  ///     "destination_account": "acct_1N7xIdAcfnLQvUhx"
  /// }
  ///
  ///
  static const createPaymentIntent = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_intents';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_intents/pi_3NA8LdAYiDFblkMT2QZIICN2/confirm
  static confirmPaymentIntent(String paymentIntentId) => 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_intents/$paymentIntentId/confirm';

  /// Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/customers/cus_NtryRcVqmOulur/payment_methods
  static getCustomerPaymentMethods(String customerId) => 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/customers/$customerId/payment_methods';

  /// Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/customers?email=vladik11042002v@gmail.com
  static const getCustomersByEmail = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/customers';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/attach
  /// {
  ///     "number": "4242424242424242",
  ///     "exp_month": 8,
  ///     "exp_year": 2024,
  ///     "cvc": 123,
  ///     "holder": "Vlad",
  ///     "customer_id": "cus_NtryRcVqmOulur"
  /// }
  static const addCard = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/attach';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/detach
  /// {
  ///     "payment_method_id": "pm_1N7ii4LBJ068nhtjr27sf3A2"
  /// }
  static const removeCard = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/payment_methods/detach';

  /// Example POST https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/users/ZOW4VPZO7zZ0Mt3yAEbWI2d4TZg2
  static deleteAccount(String userUid) => 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/users/$userUid';

  /// Example GET https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/weekly-earnings?connected_account=acct_1N7xIdAcfnLQvUhx
  static const getWeeklyEarnings = 'https://us-central1-allxlusive-68f1c.cloudfunctions.net/apis/weekly-earnings';
}