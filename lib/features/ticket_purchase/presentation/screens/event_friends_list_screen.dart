import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/domain/entities/user/user.dart';

class EventFriendsListScreen extends StatelessWidget {
  final List<User> friends;
  const EventFriendsListScreen({Key? key, required this.friends}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            BackArrow(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 60,),
                  Text('Friends', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),),
                  Text('Those are friends, who are attending this event too.', style: TextStyle(fontSize: 12, fontWeight: FontWeight.w300, color: KColors.textColor),),
                  SizedBox(height: 10,),
                  Column(
                    children: List.generate(friends.length, (index) => Container(
                        margin: EdgeInsets.symmetric(vertical: 15),
                        child: _profileTile(context: context, user: friends[index])))
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _profileTile({required User user, required BuildContext context}){
    return Row(
      children: [
        GestureDetector(
          onTap: (){
            context.push(RouteNames.profileDetails, extra: user.uid);
          },
          child: UserPhoto(
            width: 48,
            photoUrl: user.photoUrl,
            height: 48,
            borderRadius: 8,
          ),
        ),
        SizedBox(width: 16,),
        Text(user.name, style: TextStyle(fontSize: 16, color: KColors.textColor),)
      ],
    );
  }
}
