import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/auth/presentation/blocs/auth_bloc.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class WalletNotCreatedScreen extends StatelessWidget {
  const WalletNotCreatedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<OrganiserWalletBloc,OrganiserWalletState>(
      listener: (context,state){
        state.maybeMap(
            walletNeedsMoreCapabilities: (state){
              context.pushReplacement(RouteNames.walletResolve);
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
                    Text("Connect your Stripe account to Allxclusive marketplace to receive payouts as party organiser.", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300, color: KColors.textColor),),
                    Spacer(),
                    Center(child: Image.asset('assets/stripe_logo.png', color: KColors.mainAccent, width: 200,)),
                    Spacer(),
                    AppButton(text: 'Connect', onPressed: (){
                      context.read<OrganiserWalletBloc>().add(OrganiserWalletEvent.createOrganiserWallet(userUid: context.read<ProfileInitializationBloc>().state.user!.uid, email: context.read<AuthBloc>().state.user!.email!));
                    }),
                    SizedBox(height: 40,),
                  ],
                ),
              ),
              BackArrow(),
            ],
          ),
        ),
      ),
    );
  }
}
