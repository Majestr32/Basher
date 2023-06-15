import 'dart:math';

import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/gradient_icon_holder.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class TermsConditionsScreen extends StatelessWidget {
  const TermsConditionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Spacer(),
                  Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GradientIconHolder(
                            width: 100,
                            height: 100,
                            child: Transform.rotate(
                                angle: pi / 2,
                                child: Icon(FontAwesomeIcons.fileLines, size: 55, color: KColors.textColor,))),
                        SizedBox(height: 26,),
                        Text('Terms & Conditions', style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700, color: KColors.textColor),),
                        Text('AllXclusive is trying to maintain the best possible level of event and entertaiment quality. You will not be granted entry if:', textAlign: TextAlign.center, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.darkGrey),),
                      ],
                    ),
                  ),
                  SizedBox(height: 50,),
                  Text("- You turn up intoxicated\n- You don’t comply with the venue’s dress code\n- You are already banned from the club\n- You are underage", style: TextStyle(color: KColors.darkGrey, fontWeight: FontWeight.w600),),
                  SizedBox(height: 26,),
                  Text("Remember:", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),),
                  Text("- Bring and acceptable ID\n- Contact your host for all details\n- Comply with your host and venue\n- Comply with our Terms & Conditions", style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w600),),
                  Spacer(),
                  AppButton(onPressed: (){
                    context.push(RouteNames.chooseTeam, extra: context.read<EventDetailsBloc>());
                  }, text: 'AGREE WITH TERMS', bgColor: KColors.mainAccent,),
                  SizedBox(height: 30,)
                ],
              ),
            ),
            BackArrow()
          ],
        ),
      ),
    );
  }
}
