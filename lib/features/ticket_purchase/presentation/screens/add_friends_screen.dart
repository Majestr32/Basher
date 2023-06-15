import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/gradient_icon_holder.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/friends_search_repository_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/search_people.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/friends_picker/friends_picker_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../domain/entities/join_request/join_request.dart';

class AddFriendsScreen extends StatefulWidget {
  const AddFriendsScreen({Key? key}) : super(key: key);

  @override
  State<AddFriendsScreen> createState() => _AddFriendsScreenState();
}

class _AddFriendsScreenState extends State<AddFriendsScreen> {
  late final FriendsPickerBloc _friendsPickerBloc = FriendsPickerBloc(searchPeopleCase: SearchPeople(friendsSearchRepository: context.read<FriendsSearchRepository>()));

  @override
  void initState() {
    super.initState();
    _friendsPickerBloc.add(const FriendsPickerEvent.searchFriend(searchQuery: ''));
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<EventDetailsBloc, EventDetailsState>(
      listener: (context,state){
        state.maybeMap(
            sentRequest: (_){
              context.pop();
              context.pushReplacement(RouteNames.joinRequestSent);
            },
            error: (e){
              AppToast.instance.showError(context, e.failure.message);
            },
            orElse: (){});
      },
      child: Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: BlocBuilder<FriendsPickerBloc,FriendsPickerState>(
            bloc: _friendsPickerBloc,
            builder: (context,state) => Stack(
              children: [

                Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 80,),
                          GradientIconHolder(
                              width: 100,
                              height: 100,
                              child: Icon(FontAwesomeIcons.users, color: KColors.textColor,)),
                          const SizedBox(height: 32,),
                          Text('ADD FRIENDS', textAlign: TextAlign.center, style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: KColors.textColor),),
                          const SizedBox(height: 26,),
                          Text('Add friends you would like to join in event or table with.', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.darkGrey),),
                          const SizedBox(height: 16,),
                          context.watch<SuggestFriendsBloc>().state.users.isEmpty ? const SizedBox.shrink() : Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Suggested Friends', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.textColor),)),
                          const SizedBox(height: 16,),
                          ((){
                            final addedFriends = context.watch<SuggestFriendsBloc>().state.users;
                            return Align(
                              alignment: Alignment.centerLeft,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                physics: const ClampingScrollPhysics(),
                                child: Row(
                                    children: addedFriends.map((e) => Container(
                                      margin: const EdgeInsets.only(right: 12),
                                      child: _suggestedFriendTile(e,
                                          _friendsPickerBloc.state.addedFriends.contains(e),(){
                                        _friendsPickerBloc.add(FriendsPickerEvent.addFriend(friend: e));
                                      },(){
                                        context.push(RouteNames.profileDetails, extra: e.uid);
                                      }),
                                    )).toList()
                                ),
                              ),
                            );
                          }()),
                          state.addedFriends.isEmpty ? const SizedBox.shrink() : Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Team', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.textColor),)),
                          state.addedFriends.isEmpty ? const SizedBox.shrink() : const SizedBox(height: 11,),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const ClampingScrollPhysics(),
                              child: Row(
                                children: state.addedFriends.map((e) => Container(
                                  margin: const EdgeInsets.only(right: 12),
                                  child: _friendRemoveTile(e, () {
                                    _friendsPickerBloc.add(FriendsPickerEvent.removeFriend(friend: e));
                                  }),
                                )).toList()
                              ),
                            ),
                          ),
                          const SizedBox(height: 26,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(FontAwesomeIcons.magnifyingGlass, size: 25, color: KColors.textColor,),
                              const SizedBox(width: 15,),
                              Text('Search for friends', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.textColor),)
                            ],
                          ),
                          TextField(
                            onChanged: (val){
                              _friendsPickerBloc.add(FriendsPickerEvent.searchFriend(searchQuery: val));
                            },
                            cursorColor: KColors.mainAccent,
                            style: TextStyle(color: KColors.textColor),
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(
                                borderSide: BorderSide(
                                  color: KColors.lightGrey
                                )
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: KColors.lightGrey
                                  )
                              ),
                              focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: KColors.mainAccent
                                  )
                              ),
                            ),
                          ),
                          ListView.builder(
                              itemCount: state.suggestedFriends.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, i){
                            return Container(
                                margin: const EdgeInsets.symmetric(vertical: 13),
                                child: _friendTile(state.suggestedFriends[i], [context.read<ProfileInitializationBloc>().state.user!.uid, ...state.addedFriends.map((e) => e.uid).toList()], (){
                                  _friendsPickerBloc.add(FriendsPickerEvent.addFriend(friend: state.suggestedFriends[i]));
                                }));
                          })
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: GestureDetector(
                    onTap: (){
                      if(_friendsPickerBloc.state.addedFriends.isEmpty){
                        return;
                      }
                      final event = context.read<EventDetailsBloc>().state.eventDetails!.event;
                      final fromUser = context.read<ProfileInitializationBloc>().state.user!;
                      context.read<EventDetailsBloc>().add(EventDetailsEvent.sendJoinRequest(joinRequest: JoinRequest(
                        fromUserUid: fromUser.uid,
                        event: event.eventModel!,
                        eventUid: event.eventModel!.uid!,
                        fromUser: fromUser,
                        toUserUid: event.eventModel!.organiserUid,
                        groupMembers: List.generate(_friendsPickerBloc.state.addedFriends.length, (index) => JoinRequest(fromUser: _friendsPickerBloc.state.addedFriends[index], event: event.eventModel!, fromUserUid: _friendsPickerBloc.state.addedFriends[index].uid, toUserUid: event.eventModel!.organiserUid, eventUid: event.eventModel!.uid!))
                      )));
                    },
                    child: Container(
                        margin: const EdgeInsets.only(right: 24, top: 15),
                        color: KColors.transparent,
                        child: Text('CONFIRM', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: state.addedFriends.isEmpty ? KColors.lightGrey : KColors.mainAccent),)),
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

  Widget _suggestedFriendTile(User user, bool isSelected, VoidCallback onAddTap, VoidCallback onProfileTap){
    return Container(
      width: 149,
      height: 213,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF1F1F1F)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: Column(
          children: [
            Expanded(child: GestureDetector(
                onTap: onProfileTap,
                child: UserPhoto(photoUrl: user.photoUrl, borderRadius: 8,))),
            const SizedBox(height: 12,),
            SizedBox(
              height: 40,
                child: Text(user.name, style: TextStyle(color: KColors.textColor), maxLines: 2, overflow: TextOverflow.ellipsis,)),
            const SizedBox(height: 12,),
            SizedBox(
                height: 38,
                child: AppButton(text: 'Add', onPressed: isSelected ? (){} : onAddTap, bgColor: !isSelected ? KColors.mainAccent : KColors.lightGrey,))
          ],
        ),
      ),
    );
  }
  Widget _friendRemoveTile(User user, VoidCallback onTap){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 48,
        height: 48,
        child: Stack(
          children: [
            UserPhoto(
              width: 48,
              height: 48,
              photoUrl: user.photoUrl,
              borderRadius: 8,
            ),
            Center(
              child: Icon(
                FontAwesomeIcons.minus,
                color: KColors.errorColor,
                size: 24,
              ),
            ),
          ],
        ),
      )
    );
  }

  Widget _friendTile(User user, List<String> userIdsToIgnore, VoidCallback onTap){
    return Row(children: [
      GestureDetector(
        onTap: (){
          context.push(RouteNames.profileDetails, extra: user.uid);
        },
        child: UserPhoto(width: 48, height: 48, photoUrl: user.photoUrl, borderRadius: 8,)
      ),
      const SizedBox(width: 16,),
      Expanded(
        child: Align(
          alignment: Alignment.centerLeft,
          child: FittedBox(
              fit: BoxFit.scaleDown,
              child: Text(user.name, style: TextStyle(
                fontSize: 16,
                color: KColors.textColor
              ),)),
        ),
      ),
      const SizedBox(width: 16,),
      userIdsToIgnore.contains(user.uid) ? const SizedBox.shrink() : GestureDetector(
          onTap: onTap,
          child: Icon(FontAwesomeIcons.plus, color: KColors.success, size: 26,))
    ],);
  }
}
