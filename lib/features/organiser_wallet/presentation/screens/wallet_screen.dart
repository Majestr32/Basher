import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/input_formatters/dollar_input_formatter.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:currency_symbols/currency_symbols.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OrganiserWalletBloc,OrganiserWalletState>(
      listener: (context,state){
        state.maybeMap(
            failedToPayout: (state){
              AppToast.instance.showError(context, state.error.message);
            },
            orElse: (){});
      },
      builder: (context,state) => Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Stack(
            children: [
              !state.walletInitialized ? Center(child: LoadingIndicatorWidget(),) : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                    const SizedBox(height: 100,),
                    _card(
                        bankName: context.watch<OrganiserWalletBloc>().state.account!.defaultBankAccount.bankName,
                        bankNumber: "${context.watch<OrganiserWalletBloc>().state.account!.defaultBankAccount.routingNumber} **** ${context.watch<OrganiserWalletBloc>().state.account!.defaultBankAccount.last4}",
                        availableToPayout: context.watch<OrganiserWalletBloc>().state.accountBalance!.defaultAvailableBalance.amountString,
                        pending: context.watch<OrganiserWalletBloc>().state.accountBalance!.defaultPendingBalance.amountString,
                        photoUrl: context.watch<ProfileInitializationBloc>().state.user!.photoUrl),
                    const SizedBox(height: 28,),
                    AppButton(text: 'Account settings', onPressed: () async{
                      final url = Uri.parse("https://dashboard.stripe.com/dashboard");
                      if(await canLaunchUrl(url)){
                        launchUrl(url);
                      }
                    }),
                    const SizedBox(height: 28,),
                    _payout(),
                    const SizedBox(height: 28,),
                    Text('Payout history', style: TextStyle(fontSize: 14, color: KColors.textColor, fontWeight: FontWeight.w500),),
                      SizedBox(height: 15,),
                      ...List.generate(context.watch<OrganiserWalletBloc>().state.payouts.length, (index) {
                        final payout = context.read<OrganiserWalletBloc>().state.payouts[index];
                        return Container(
                          margin: EdgeInsets.symmetric(vertical: 8),
                          child: _payoutTile(amount: payout.amount, createdAt: payout.createdAt, status: payout.status));
                      })
                  ],),
                ),
              ),
              const BackArrow(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _card({required String bankName, required bankNumber, required String availableToPayout, required String pending, required String? photoUrl}){
    return Container(
      width: double.infinity,
      height: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: KColors.mainAccent.withOpacity(0.12)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: UserPhoto(photoUrl: photoUrl, width: 46, height: 46, borderRadius: 64,)),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(bankName, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: KColors.textColor),),
                Text(bankNumber, style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: KColors.textColor),),
                const Spacer(),
                Row(
                  children: [
                    Text('Pending', style: TextStyle(fontSize: 12, color: KColors.lightGrey),),
                    Spacer(),
                    Text(pending, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: KColors.textColor),),
                  ],
                ),
                Row(
                  children: [
                    Text('Available to payout', style: TextStyle(fontSize: 12, color: KColors.lightGrey),),
                    Spacer(),
                    Text(availableToPayout, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: KColors.textColor),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  late final _payoutController = TextEditingController(text: "${cSymbol(context.read<OrganiserWalletBloc>().state.accountBalance!.defaultAvailableBalance.currency.toUpperCase())} 0");

  final _payoutFocusNode = FocusNode();

  Widget _payout(){
    return Container(
      width: double.infinity,
      height: 163,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
          color: KColors.mainAccent.withOpacity(0.12)
      ),
      child: Column(
        children: [
          SizedBox(height: 36,),
          Expanded(
            child: EditableText(
                inputFormatters: [CurrencyInputFormatter(currency: cSymbol(context.read<OrganiserWalletBloc>().state.accountBalance!.defaultAvailableBalance.currency.toUpperCase()))],
                controller: _payoutController, textAlign: TextAlign.center, focusNode: _payoutFocusNode, style: TextStyle(fontSize: 32, color: KColors.textColor), cursorColor: KColors.mainAccent, backgroundCursorColor: KColors.transparent),
          ),
          SizedBox(height: 20,),
          AppButton(text: 'Request payout',
            bgColor: KColors.mainAccent,
            onPressed: (){
              context.read<OrganiserWalletBloc>().add(OrganiserWalletEvent.requestPayout(amount: int.parse(_payoutController.text.substring(2)) * 100));
            },),
        ],
      ),
    );
  }

  Widget _payoutTile({required String amount, required DateTime createdAt, required String status}){
    return Container(
      width: double.infinity,
      height: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: KColors.mainAccent.withOpacity(0.12)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
        child: Row(
          children: [
            _status(status),
            SizedBox(width: 30,),
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
              Text(amount, style: TextStyle(fontWeight: FontWeight.w500, color: KColors.textColor),),
              Spacer(),
              Text(createdAt.formattedTexted, style: TextStyle(fontSize: 12, color: KColors.textColor),),
            ],))
          ],
        ),
      )
    );
  }

  Widget _status(String status){
    if(status == 'paid'){
      return Row(
        children: [
          Icon(FontAwesomeIcons.solidCircleCheck, color: KColors.success,),
          SizedBox(width: 7,),
          Text(status.characters.first.toUpperCase() + status.substring(1), style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500, color: KColors.success),)
        ],
      );
    }else if(status == 'canceled' || status == 'failed'){
      return Row(
        children: [
          Icon(FontAwesomeIcons.solidCircleXmark, color: KColors.errorColor,),
          SizedBox(width: 7,),
          Text(status.characters.first.toUpperCase() + status.substring(1), style: TextStyle(fontSize: 12, color: KColors.errorColor),)
        ],
      );
    }else{
      return Row(
        children: [
          Icon(FontAwesomeIcons.solidClock, color: KColors.lightGrey,),
          SizedBox(width: 7,),
          Text(status.characters.first.toUpperCase() + status.substring(1), style: TextStyle(fontSize: 12, color: KColors.lightGrey),)
        ],
      );
    }
  }

  @override
  void dispose() {
    _payoutController.dispose();
    _payoutFocusNode.dispose();
    super.dispose();
  }
}
