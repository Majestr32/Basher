import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TeamSelectScreen extends StatelessWidget {
  const TeamSelectScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventDetailsBloc,EventDetailsState>(
      listener: (context,state){
        if(!ModalRoute.of(context)!.isCurrent){
          return;
        }
        state.maybeMap(
            sentRequest: (_){
              context.pop();
              context.pushReplacement(RouteNames.joinRequestSent);
            },
            orElse: (){

        });
      },
      child: Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Stack(
            children: [
              BackArrow(),
              Column(
                children: [
                  SizedBox(height: 70,),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Team', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: KColors.textColor),),
                        SizedBox(height: 20,),
                        Text('Build your team to join event with your friends or you can go alone.', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: KColors.textColor),),
                      ],
                    ),
                  ),
                  Spacer(),
                  UserPhoto(width: 128,
                    height: 128,
                    borderRadius: 200,
                    photoUrl: context.watch<ProfileInitializationBloc>().state.user!.photoUrl,
                  ),
                  SizedBox(height: 16,),
                  Text(context.watch<ProfileInitializationBloc>().state.user!.name, style: TextStyle(color: KColors.textColor, fontSize: 24, fontWeight: FontWeight.w600),),
                  SizedBox(height: 2,),
                  Text(context.watch<ProfileInitializationBloc>().state.user!.phone!, style: TextStyle(color: KColors.lightGrey, fontSize: 14, fontWeight: FontWeight.w600),),
                  SizedBox(height: 16,),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        _choiceBtn(FontAwesomeIcons.solidUser, 'ONLY ME', (){
                          final event = context.read<EventDetailsBloc>().state.eventDetails!.event;
                          final fromUser = context.read<ProfileInitializationBloc>().state.user!;
                          context.read<EventDetailsBloc>().add(EventDetailsEvent.sendJoinRequest(joinRequest: JoinRequest(
                            fromUserUid: fromUser.uid,
                            event: event.eventModel,
                            eventUid: event.eventModel.uid!,
                            fromUser: fromUser,
                            toUserUid: event.eventModel.organiserUid,
                          )));
                        }),
                        SizedBox(height: 29,),
                        _choiceBtn(FontAwesomeIcons.users, 'ME WITH FRIENDS', (){
                          context.push(RouteNames.addFriend, extra: context.read<EventDetailsBloc>());
                        }),
                      ],
                    ),
                  ),
                  Spacer()
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }

  Widget _choiceBtn(IconData icon, String title, VoidCallback onTap){
    return Container(
      height: 51,
      width: double.infinity,
      child: Material(
        color: KColors.mainAccent,
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          borderRadius: BorderRadius.circular(16),
          onTap: onTap,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(icon, color: KColors.textColor, size: 20,),
                ),
                Center(
                  child: Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: KColors.textColor),),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Icon(FontAwesomeIcons.chevronRight, color: KColors.textColor, size: 16,),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
