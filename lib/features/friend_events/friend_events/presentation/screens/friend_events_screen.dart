import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/loading_overlay.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/big_event_tile.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/friend_events/friend_events/data/data_sources/remote/friend_events_service_impl.dart';
import 'package:allxclusive/features/friend_events/friend_events/data/repositories/friend_events_repository_impl.dart';
import 'package:allxclusive/features/friend_events/friend_events/domain/repositories/friend_events_repository_contract.dart';
import 'package:allxclusive/features/friend_events/friend_events/domain/use_cases/get_friend_events.dart';
import 'package:allxclusive/features/friend_events/friend_events/presentation/blocs/friend_events_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class FriendEventsScreen extends StatefulWidget {
  final User friend;
  const FriendEventsScreen({Key? key, required this.friend}) : super(key: key);

  @override
  State<FriendEventsScreen> createState() => _FriendEventsScreenState();
}

class _FriendEventsScreenState extends State<FriendEventsScreen> {

  final FriendEventsBloc _friendEventsBloc = FriendEventsBloc(getFriendEventsCase: GetFriendEvents(friendEventsRepository: FriendEventsRepositoryImpl(friendEventsService: FriendEventsServiceImpl(db: FirebaseFirestore.instance))));

  @override
  void initState() {
    super.initState();
    _friendEventsBloc.add(FriendEventsEvent.fetchFriendEvents(friendUid: widget.friend.uid));
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FriendEventsBloc,FriendEventsState>(
      bloc: _friendEventsBloc,
        builder: (context,state){
      return Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BackArrow(),
                !state.hasEvents ? _loadingEvents() : _loadedEvents(state)
              ],
            ),
          ),
        ),
      );
    });
  }

  Widget _loadingEvents(){
    return Column(
      children: [
        SizedBox(height: 120,),
        LoadingIndicatorWidget(),
      ],
    );
  }

  Widget _loadedEvents(FriendEventsState state){
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 32,),
            UserPhoto(width: 96, height: 96, borderRadius: 96, photoUrl: widget.friend.photoUrl,),
            SizedBox(height: 10,),
            Text(widget.friend.name, style: TextStyle(fontSize: 16, color: KColors.textColor),),
            SizedBox(height: 10,),
            Text('The most recent events that your friend is going to visit.', textAlign: TextAlign.center, style: TextStyle(color: KColors.lightGrey),),
            SizedBox(height: 32,),
            ...List.generate(state.events!.length, (index) {
              final event = state.events![index];
              return Container(
                  margin: EdgeInsets.symmetric(vertical: 16),
                  child: BigEventTile(title: event.eventModel.name,
                      minPrice: '50 \$',
                      membersCount: event.eventModel.totalMembers,
                      imgPath: event.eventModel.imgPath!, date: event.eventModel.date, location: event.eventModel.location, onTap: (){
                    context.push(RouteNames.eventDetails, extra: event);
                  }));
            })
          ],
        ),
      ),
    );
  }
}
