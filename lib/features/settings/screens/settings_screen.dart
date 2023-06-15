import 'dart:ui';

import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_switch.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/organiser_wallet/presentation/blocs/organiser_wallet_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/join_requests/join_requests_bloc.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:allxclusive/core/extensions/firebase_user.dart';

import '../../auth/presentation/blocs/auth_bloc.dart';
import '../../profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: BlocBuilder<ProfileInitializationBloc, ProfileInitializationState>(
        builder: (context,state) {
          if(!state.isInitialized){
            return const SizedBox.shrink();
          }
          return SafeArea(
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 70,),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 32),
                      child: Text('Settings', style: TextStyle(fontSize: 24, color: KColors.textColor, fontWeight: FontWeight.w600),)),
                  const SizedBox(height: 5,),
                  _settingsTile(text: 'Edit profile', active: true, onTap: () => context.push(RouteNames.editProfile)),
                  (context.watch<AuthBloc>().state.user?.isEmailAndPasswordSignedIn ?? false) ? _settingsTile(text: 'Change password', active: true, onTap: () => context.push(RouteNames.changePassword)) : const SizedBox.shrink(),
                  _settingsTile(text: 'Change phone', active: true, onTap: () => context.push(RouteNames.changeEnterPhone)),
                  _settingsTile(text: 'Delete account', active: true, onTap: () async{
                    final confirmed = await confirm(context,
                        title: Text('Dangerous operation', style: TextStyle(color: KColors.textColor),),
                        content: Text('Are you sure to delete account and all related data?', style: TextStyle(color: KColors.textColor),));
                    if(confirmed){
                      context.read<AuthBloc>().add(const AuthEvent.deleteAccount());
                    }
                  }),
                  _settingsTile(text: 'Logout', active: true, onTap: () => context.read<AuthBloc>().add(const AuthEvent.signOut())),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 32),
                    child: _organiserMode(text: 'Organiser mode', value: context.watch<ProfileInitializationBloc>().state.user!.isOrganiser, onChanged: (val){
                      final user = context.read<ProfileInitializationBloc>().state.user;
                      context.read<ProfileInitializationBloc>().add(ProfileInitializationEvent.setUserMode(uid: user!.uid, role: user.role.opposite));
                    }),
                  ),
                  const SizedBox(height: 10,),
                  _organiserTabs(activated: context.watch<ProfileInitializationBloc>().state.user!.isOrganiser, context: context)
                ],
              ),
              const BackArrow(),
            ],
          ),
        );
        },
      ),
    );
  }

  Widget _organiserTabs({required BuildContext context, required bool activated}){
    return AnimatedCrossFade(
      duration: const Duration(
        milliseconds: 150
      ),
      firstChild: const SizedBox.shrink(),
      secondChild: Column(
        children: [
          _settingsTile(text: 'Wallet', active: true, icon: Icon(FontAwesomeIcons.wallet, color: KColors.mainAccent,), onTap: (){
            context.read<OrganiserWalletBloc>().state.maybeMap(
                walletNotCreated: (_){
                  context.push(RouteNames.walletNotCreated);
                },
                walletNeedsMoreCapabilities: (_){
                  context.push(RouteNames.walletResolve);
                },
                walletInitialized: (_){
                  context.push(RouteNames.organiserWallet);
                },
                orElse: (){});
          }),
          _settingsTile(
              active: context.watch<OrganiserWalletBloc>().state.walletInitialized,
              icon: Icon(FontAwesomeIcons.chartBar, color: KColors.mainAccent,), text: 'Statistics', onTap: (){
            context.push(RouteNames.organiserStatistics);
          }),
          _settingsTile(
              active: context.watch<OrganiserWalletBloc>().state.walletInitialized,
              icon: Icon(FontAwesomeIcons.earthEurope, color: KColors.mainAccent,), text: 'Events', onTap: (){
            context.push(RouteNames.organiserEvents);
          }),
          _settingsTile(
              active: context.watch<OrganiserWalletBloc>().state.walletInitialized,
              icon: Stack(
            children: [
              Icon(FontAwesomeIcons.eye, color: KColors.mainAccent),
              context.watch<JoinRequestsBloc>().state.joinRequests!.isEmpty ? const SizedBox.shrink() : Align(alignment: Alignment.bottomRight, child: CircleAvatar(backgroundColor: KColors.secondAccent, radius: 7, child: Text(context.watch<JoinRequestsBloc>().state.joinRequests!.length > 99 ? "!" : context.watch<JoinRequestsBloc>().state.joinRequests!.length.toString(), style: TextStyle(fontSize: 8, color: KColors.textColor, fontWeight: FontWeight.bold),),),)
            ],
          ), text: 'Join Requests', onTap: (){
            context.push(RouteNames.joinRequests);
          }),
        ],
      ),
      crossFadeState: activated ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }

  Widget _organiserMode({required String text, required bool value, required Function(bool) onChanged}){
    return Row(
      children: [
        Text(text, style: TextStyle(fontSize: 18, color: KColors.textColor, fontWeight: FontWeight.w500),),
        const Spacer(),
        AppSwitch(active: value, onChanged: onChanged)
      ],
    );
  }

  Widget _settingsTile({Widget? icon,required String text, required bool active, required VoidCallback onTap}){
    return InkWell(
      onTap: active ? onTap : (){},
      child: ClipRect(
        child: SizedBox(
          width: double.infinity,
          height: 40,
          child: Stack(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      icon == null ? const SizedBox.shrink() : Container(
                          margin: const EdgeInsets.only(right: 15),
                          child: Container(
                              width: 30,
                              height: 30,
                              child: icon)),
                      Text(text, style: TextStyle(fontSize: 16, color: KColors.textColor),),
                      const Spacer(),
                      Icon(FontAwesomeIcons.chevronRight, color: KColors.lightGrey, size: 15,)
                    ],
                  ),
                ),
              ),
              BackdropFilter(filter: ImageFilter.blur(sigmaX: !active ? 3 : 0, sigmaY: !active ? 3 : 0), child: Container(color: KColors.transparent,),)
            ],
          ),
        ),
      ),
    );
  }
}
