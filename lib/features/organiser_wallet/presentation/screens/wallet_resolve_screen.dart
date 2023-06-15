import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class WalletResolveScreen extends StatelessWidget {
  const WalletResolveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrganiserWalletBloc, OrganiserWalletState>(
      listener: (context,state){
        state.maybeMap(
            walletInitialized: (_){
              context.pushReplacement(RouteNames.organiserWallet);
            },
            generatedAccountLink: (state) async{
              final url = Uri.parse(state.link);
              if(await canLaunchUrl(url)){
                await launchUrl(url);
              }
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
                    Text('Create wallet', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500, color: KColors.textColor),),
                    SizedBox(height: 5,),
                    Text("Please connect your Stripe account to Allxclusive.\n\nPoints left to resolve:", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: KColors.textColor),),
                    SizedBox(height: 40,),
                    context.watch<OrganiserWalletBloc>().state.account!.payoutsEnabled ? SizedBox.shrink() : Row(children: [
                      Icon(FontAwesomeIcons.circleExclamation, color: KColors.errorColor,),
                      SizedBox(width: 16,),
                      Text('Payouts are disabled', style: TextStyle(color: KColors.textColor),)
                    ],),
                    SizedBox(height: 23,),
                    context.watch<OrganiserWalletBloc>().state.account!.transfersEnabled ? SizedBox.shrink() : Row(children: [
                      Icon(FontAwesomeIcons.circleExclamation, color: KColors.errorColor,),
                      SizedBox(width: 16,),
                      Text('Transfers are disabled', style: TextStyle(color: KColors.textColor),)
                    ],),
                    Spacer(),
                    AppButton(text: 'Setup Stripe', bgColor: KColors.mainAccent, onPressed: (){
                      context.read<OrganiserWalletBloc>().add(OrganiserWalletEvent.generateAccountLink(accountId: context.read<OrganiserWalletBloc>().state.account!.id));
                    }),
                    SizedBox(height: 30,),
                    AppButton(text: 'Resolve', onPressed: (){
                      context.read<OrganiserWalletBloc>().add(OrganiserWalletEvent.fetchOrganiserWallet(userUid: context.read<ProfileInitializationBloc>().state.user!.uid));
                    }),
                    SizedBox(height: 40,)
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
