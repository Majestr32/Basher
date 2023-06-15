import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/payment_cards/payment_cards_bloc.dart';
import 'package:credit_card_form/credit_card_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/back_button.dart';

class AddCardScreen extends StatefulWidget {
  const AddCardScreen({Key? key}) : super(key: key);

  @override
  State<AddCardScreen> createState() => _AddCardScreenState();
}

class _AddCardScreenState extends State<AddCardScreen> {

  String _number = "";
  String _holderName = "";
  String _expMonth = "";
  String _expYear = "";
  String _cvc = "";

  @override
  Widget build(BuildContext context) {
    return BlocListener<PaymentCardsBloc, PaymentCardsState>(
      listener: (context,state){
        state.maybeMap(
            addedCard: (_){
              AppToast.instance.showSuccess(context, 'Card added!');
              context.pop();
            },
            failCardAdd: (_){
              AppToast.instance.showError(context, 'Card is invalid');
            },
            orElse: (){});
      },
      child: Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 70,),
                    Center(child: Text('Add card', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),)),
                    SizedBox(height: 60,),
                    SizedBox(
                      height: 160,
                      child: CreditCardForm(
                        theme: CreditCardDarkTheme(),
                        onChanged: (CreditCardResult result) {
                          setState(() {
                            _number = result.cardNumber;
                            _holderName = result.cardHolderName;
                            _expYear = result.expirationYear;
                            _expMonth = result.expirationMonth;
                            _cvc = result.cvc;
                          });
                        },
                      ),
                    ),
                    SizedBox(height: 60,),
                    AppButton(text: 'Create', bgColor: KColors.mainAccent, onPressed: (){
                      print(_number);
                      print(_holderName);
                      print(_expYear);
                      print(_expMonth);
                      print(_cvc);
                      context.read<PaymentCardsBloc>().add(PaymentCardsEvent.addCard(email: context.read<AuthBloc>().state.user!.email!, holderName: _holderName, card: _number, expMonth: _expMonth, expYear: _expYear, cvc: _cvc));
                    })
                  ],
                ),
              ),
              BackArrow()
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCardTheme implements CreditCardTheme {
  @override
  Color backgroundColor = KColors.bgColor;
  @override
  Color textColor = KColors.textColor;
  @override
  Color borderColor = KColors.lightGrey;
  @override
  Color labelColor = KColors.textColor;


}


