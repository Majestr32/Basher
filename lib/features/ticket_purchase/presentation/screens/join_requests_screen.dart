
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/empty_data.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/refreshables/refreshables.dart';
import '../../../../core/theme/colors.dart';
import '../blocs/join_requests/join_requests_bloc.dart';

class JoinRequestsScreen extends StatelessWidget {
  const JoinRequestsScreen({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<JoinRequestsBloc, JoinRequestsState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: KColors.bgColor,
          body: SafeArea(
            child: Stack(
              children: [
                state.joinRequests!.isEmpty ? const EmptyData(icon: FontAwesomeIcons.solidFile, text: 'No requests found') : Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: RefreshIndicator(
                    onRefresh: () => refreshJoinRequests(context),
                    child: SingleChildScrollView(
                      physics: AlwaysScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 70,),
                          Text('Join requests', style: TextStyle(fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: KColors.textColor),),
                          const SizedBox(height: 20,),
                          ListView.builder(
                              itemCount: state.joinRequests!.length,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemBuilder: (context, i) {
                                return Container(
                                  margin: EdgeInsets.symmetric(vertical: 15),
                                  child: _joinRequest(joinRequest: state.joinRequests![i],
                                  onEventTap: () => context.push(RouteNames.eventDetails, extra: state.joinRequests![i].event),
                                  onProfileTap: (request) => context.push(RouteNames.profileDetails, extra: request.fromUser.uid),
                                  onAcceptTap: (){
                                    context.read<JoinRequestsBloc>().add(JoinRequestsEvent.acceptRequest(requestUid: state.joinRequests![i].uid!));
                                  },
                                  onDenyTap: (){
                                    context.read<JoinRequestsBloc>().add(JoinRequestsEvent.denyRequest(requestUid: state.joinRequests![i].uid!));
                                  }),
                                );
                              }),
                          SizedBox(height: 150,)
                        ],
                      ),
                    ),
                  ),
                ),
                const BackArrow()
              ],
            ),
          ),
        );
      },
    );
  }

  Widget _joinRequest({required JoinRequest joinRequest, required VoidCallback onEventTap, required Function(JoinRequest) onProfileTap, required VoidCallback onAcceptTap, required VoidCallback onDenyTap}){
    return IntrinsicHeight(
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFF9B9BA4).withOpacity(0.15)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: [
              Container(height: 60, width: double.infinity,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(child: _profileDetail((joinRequest) => onProfileTap(joinRequest), joinRequest)),
                  SizedBox(
                    height: 50,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(width: 15,),
                        GestureDetector(
                            onTap: onAcceptTap,
                            child: Icon(FontAwesomeIcons.check, color: KColors.success, size: 24,)),
                        const SizedBox(width: 15,),
                        GestureDetector(
                            onTap: onDenyTap,
                            child: Icon(FontAwesomeIcons.xmark, color: KColors.errorColor, size: 26,)),
                        const SizedBox(width: 5,),
                    ],),
                  ),
                ],
              ),),
              ...List.generate(joinRequest.groupMembers.length, (index) => _profileDetail((joinRequest) {
                onProfileTap.call(joinRequest);
              }, joinRequest.groupMembers[index])),
              Expanded(child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(joinRequest.event.name, style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: KColors.textColor),),
                  const SizedBox(width: 10,),
                  GestureDetector(
                    onTap: onEventTap,
                    child: Container(
                      width: 32,
                      height: 32,
                      child: ShimmerImage(
                        radius: 8,
                        url: joinRequest.event.imgPath!,
                      ),
                    ),
                  ),
              ],))
            ],
          ),
        ),
      ),
    );
  }

  Widget _profileDetail(Function(JoinRequest) onProfileTap, JoinRequest joinRequest){
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          GestureDetector(
            onTap: () => onProfileTap(joinRequest),
            child: UserPhoto(width: 48, height: 48, photoUrl: joinRequest.fromUser.photoUrl,)
          ),
          const SizedBox(width: 15,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(joinRequest.fromUser.name, style: TextStyle(fontWeight: FontWeight.bold, color: KColors.textColor),),
                Text('${joinRequest.fromUser.age} y.o', style: TextStyle(color: KColors.lightGrey, fontSize: 10),),
                Text('${joinRequest.fromUser.country}, ${joinRequest.fromUser.city}', style: TextStyle(fontSize: 8, color: KColors.textColor),),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
