import 'dart:convert';
import 'dart:developer';

import 'package:allxclusive/core/extensions/pay.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/event_tile.dart';
import 'package:allxclusive/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/add_payment_method_to_customer.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/detach_payment_method.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/get_user_payment_methods.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/purchase_ticket_with_google_pay.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/payment_cards/payment_cards_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/purchase_ticket/purchase_ticket_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/screens/pays.dart';
import 'package:allxclusive/shared/domain/entities/event_detailed/event_detailed.dart';
import 'package:allxclusive/shared/domain/entities/ticket/ticket.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:pay/pay.dart' as pay;

import '../../../../core/enums/tickets_types.dart';
import '../../domain/use_cases/purchase_ticket.dart';

class PurchaseEventTicketScreen extends StatefulWidget {
  final EventDetailed eventDetailed;
  const PurchaseEventTicketScreen({Key? key, required this.eventDetailed}) : super(key: key);

  @override
  State<PurchaseEventTicketScreen> createState() => _PurchaseEventTicketScreenState();
}

class _PurchaseEventTicketScreenState extends State<PurchaseEventTicketScreen> {
  int _selectedTicket = 0;
  int _selectedPaymentMethod = 0;
  
  late final PurchaseTicketBloc _purchaseTicketBloc = PurchaseTicketBloc(
      purchaseTicketWithGooglePayCase: PurchaseTicketWithGooglePay(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      purchaseTicketCase: PurchaseTicket(
    ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
  ));

  late final PaymentCardsBloc _paymentCardsBloc = PaymentCardsBloc(
      addPaymentMethodToCustomerCase: AddPaymentMethodToCustomer(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      detachPaymentMethodCase: DetachPaymentMethod(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      getUserPaymentMethodsCase: GetUserPaymentMethods(
    ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
  ))..add(PaymentCardsEvent.fetchCards(email: context.read<AuthBloc>().state.user!.email!));

  bool _cantPayWithCard = false;
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<PurchaseTicketBloc, PurchaseTicketState>(
      bloc: _purchaseTicketBloc,
      listener: (context, state) {
        state.maybeMap(
            success: (_){
              context..pop()..pop();
              context.push(RouteNames.successfullyBoughtTicket);
            },
            error: (e){
              AppToast.instance.showError(context, e.failure.message);
            },
            orElse: (){});
      },
      child:  BlocListener<PaymentCardsBloc, PaymentCardsState>(
        bloc: _paymentCardsBloc,
        listener: (context,state){
          _cantPayWithCard = !_paymentCardsBloc.state.isLoaded || _paymentCardsBloc.state.paymentMethods.isEmpty;
          state.maybeMap(
              removedCard: (_){
                AppToast.instance.showSuccess(context, 'Card removed!');
                setState(() {
                  _selectedPaymentMethod = 0;
                });
              },
              orElse: (){});
        },
        child: Scaffold(
          backgroundColor: KColors.bgColor,
          body: SafeArea(
            child: Stack(
              children: [
                BlocBuilder<PurchaseTicketBloc, PurchaseTicketState>(
                  bloc: _purchaseTicketBloc,
                  builder: (context,state) => state.isPaying ? Center(
                    child: LoadingIndicatorWidget(),
                  ) : Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60,),
                          EventTile(title: widget.eventDetailed.event.eventModel.name, imgPath: widget.eventDetailed.event.eventModel.imgPath!, status: widget.eventDetailed.event.eventModel.status, date: widget.eventDetailed.event.eventModel.date, location: widget.eventDetailed.event.eventModel.location, onTap: (){}),
                          SizedBox(height: 30,),
                          Text('Select ticket', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),),
                          ...List.generate(widget.eventDetailed.tickets.length, (index) => Container(
                              margin: EdgeInsets.only(top: 15),
                              child: _ticketTile(widget.eventDetailed.tickets[index], index, _selectedTicket, (val){
                                setState(() {
                                  _selectedTicket = val!;
                                });
                              }))),
                          SizedBox(height: 30,),
                          Text('Choose payment method', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),),
                          SizedBox(height: 15,),
                          BlocBuilder<PaymentCardsBloc, PaymentCardsState>(
                              bloc: _paymentCardsBloc,
                              builder: (context,state){
                                if(!state.isLoaded){
                                  return const SizedBox(height: 150, width: double.infinity, child: Center(
                                    child: LoadingIndicatorWidget(),
                                  ),);
                                }
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(
                                state.paymentMethods.length,
                                    (i) => Container(
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: _paymentMethod("**** ${state.paymentMethods[i].card.last4}", "${state.paymentMethods[i].card.expMonth.toString().padLeft(2, '0')}/${state.paymentMethods[i].card.expYear}", i, _selectedPaymentMethod, (val){setState(() {
                                    _selectedPaymentMethod = val!;
                                  });}, (val) async{
                                      _paymentCardsBloc.add(PaymentCardsEvent.removeCard(paymentMethodId: state.paymentMethods[val!].id));
                                  }),
                                ),
                              )
                            );
                          }),
                          _addCard(() {
                            context.push(RouteNames.addCard, extra: _paymentCardsBloc);
                          }),
                          SizedBox(height: 15,),
                          Text('Alternative', style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.textColor),),
                          SizedBox(height: 15,),
                          pay.ApplePayButton(
                            width: double.infinity,
                            height: 40,
                            paymentConfiguration: pay.PaymentConfiguration.fromJsonString(
                                defaultApplePay),
                            paymentItems: [widget.eventDetailed.tickets[_selectedTicket]].paymentItems,
                            style: pay.ApplePayButtonStyle.black,
                            type: pay.ApplePayButtonType.buy,
                            onPaymentResult: (val) async{
                              final token = await Stripe.instance.createApplePayToken(val);
                              _purchaseTicketBloc.add(PurchaseTicketEvent.payWithGooglePay(
                                  intent: PurchaseIntent(ticket: widget.eventDetailed.tickets[_selectedTicket], gender: context.read<ProfileInitializationBloc>().state.user!.gender.str, event: widget.eventDetailed.event.eventModel, userUid: context.read<ProfileInitializationBloc>().state.user!.uid),
                                  token: token.id, amount: (widget.eventDetailed.tickets[_selectedTicket].price * 100).toInt(), currency: widget.eventDetailed.tickets[_selectedTicket].currency.shortName.toLowerCase(), description: widget.eventDetailed.tickets[_selectedTicket].description, receiptEmail: context.read<AuthBloc>().state.user!.email!, destinationAccount: widget.eventDetailed.accountId ?? ''));
                            },
                            loadingIndicator: const Center(
                              child: CircularProgressIndicator(),
                            ),
                          ),
                          pay.GooglePayButton(
                            width: double.infinity,
                            paymentConfiguration: pay.PaymentConfiguration.fromJsonString(
                                defaultGooglePay),
                            paymentItems: [widget.eventDetailed.tickets[_selectedTicket]].paymentItems,
                            type: pay.GooglePayButtonType.pay,
                            onPaymentResult: (val){
                              final token = val["paymentMethodData"]["tokenizationData"]["token"];
                              final tokenId = jsonDecode(token)["id"];
                              _purchaseTicketBloc.add(PurchaseTicketEvent.payWithGooglePay(token: tokenId, intent: PurchaseIntent(ticket: widget.eventDetailed.tickets[_selectedTicket], gender: context.read<ProfileInitializationBloc>().state.user!.gender.str, event: widget.eventDetailed.event.eventModel, userUid: context.read<ProfileInitializationBloc>().state.user!.uid), amount: (widget.eventDetailed.tickets[_selectedTicket].price * 100).toInt(), currency: widget.eventDetailed.tickets[_selectedTicket].currency.shortName.toLowerCase(), description: widget.eventDetailed.tickets[_selectedTicket].description, receiptEmail: context.read<AuthBloc>().state.user!.email!, destinationAccount: widget.eventDetailed.accountId ?? ''));
                            },
                            loadingIndicator: const Center(
                              child: LoadingIndicatorWidget(),
                            ),
                          ),
                          SizedBox(height: 60,),
                          AppButton(
                              loading: _purchaseTicketBloc.state.isLoading,
                              bgColor: _cantPayWithCard ? KColors.lightGrey : KColors.secondAccent,
                              text: 'Pay', onPressed: (){
                                if (_cantPayWithCard){
                                  return;
                                }
                                  _purchaseTicketBloc.add(PurchaseTicketEvent.pay(
                                      paymentMethodId: _paymentCardsBloc.state.paymentMethods[_selectedPaymentMethod].id,
                                      intent: PurchaseIntent(ticket: widget.eventDetailed.tickets[_selectedTicket], gender: context.read<ProfileInitializationBloc>().state.user!.gender.str, event: widget.eventDetailed.event.eventModel, userUid: context.read<ProfileInitializationBloc>().state.user!.uid), amount: (widget.eventDetailed.tickets[_selectedTicket].price * 100).toInt(), currency: widget.eventDetailed.tickets[_selectedTicket].currency.shortName.toLowerCase(), description: widget.eventDetailed.tickets[_selectedTicket].description, receiptEmail: context.read<AuthBloc>().state.user!.email!, destinationAccount: widget.eventDetailed.accountId ?? ''));
                              }),
                          SizedBox(height: 30,)
                        ],
                      ),
                    ),
                  ),
                ),
                const BackArrow(),
              ],
            ),
          ),
        ),
      ),
);
  }

  Widget _applePay(){
    return Container(
      height: 42,
      padding: EdgeInsets.symmetric(horizontal: 15),
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: KColors.mainAccent
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Icon(FontAwesomeIcons.apple, color: KColors.textColor,),
          ),
          Center(child: Text('Apple Pay', style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w600),),)
        ],
      ),
    );
  }

  Widget _paymentMethod(String title, String subtitle, int value, int groupValue, Function(int?) onTap, Function(int?) onDismissed){
    return Dismissible(
      key: UniqueKey(),
      background: Align(
        alignment: Alignment.centerRight,
        child: Icon(FontAwesomeIcons.trash, color: KColors.errorColor,),
      ),
      confirmDismiss: (val){
        return confirm(context,
            title: Text('Dangerous operation', style: TextStyle(color: KColors.bgColor),),
            content: Text('Are you sure to delete card?', style: TextStyle(color: KColors.bgColor),));
      },
      onDismissed: (_){
        onDismissed.call(value);
      },
      child: GestureDetector(
        onTap: (){
          onTap.call(value);
        },
        child: Container(
          height: 73,
          decoration: BoxDecoration(
            color: Color(0xFF9B9BA4).withOpacity(0.15),
            borderRadius: BorderRadius.circular(8)
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                SizedBox(width: 6,),
                Icon(FontAwesomeIcons.creditCard, color: KColors.mainAccent,),
                SizedBox(width: 15,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(title, style: TextStyle(color: KColors.textColor, fontSize: 10, fontWeight: FontWeight.bold),),
                    Text(subtitle, style: TextStyle(color: KColors.lightGrey, fontSize: 10, fontWeight: FontWeight.normal),),
                  ],
                ),
                Spacer(),
                Radio<int>(
                    fillColor: MaterialStateColor.resolveWith((states) => KColors.mainAccent),
                    value: value, groupValue: groupValue, onChanged: onTap),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _addCard(VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 73,
        decoration: BoxDecoration(
            color: Color(0xFF9B9BA4).withOpacity(0.15),
            borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              SizedBox(width: 6,),
              Icon(FontAwesomeIcons.plus, size: 22, color: KColors.textColor,),
              SizedBox(width: 15,),
              Text('Add new method', style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.bold),),
            ],
          ),
        ),
      ),
    );
  }

  Widget _ticketTile(Ticket ticket, int value, int groupValue, Function(int?) onTap){
    return GestureDetector(
      onTap: (){
        onTap.call(value);
      },
      child: Container(height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Color(0xFF9B9BA4).withOpacity(0.15)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Icon(FontAwesomeIcons.ticket, color: ticket.type == TicketsTypes.vip ? Color(0xFFA3972F) : KColors.secondAccent, size: 30,),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(ticket.type.name, style: TextStyle(color: KColors.lightGrey, fontSize: 10, fontWeight: FontWeight.bold),),
                Text(ticket.priceWithCurrency, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.bold),),
              ],
            ),
            Spacer(),
            Radio<int>(
                fillColor: MaterialStateColor.resolveWith((states) => KColors.mainAccent),
                value: value, groupValue: groupValue, onChanged: onTap),
          ],
        ),
      ),),
    );
  }
}
