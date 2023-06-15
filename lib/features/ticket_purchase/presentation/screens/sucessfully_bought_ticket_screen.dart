import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SuccessfullyBoughtTicketScreen extends StatelessWidget {
  const SuccessfullyBoughtTicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: Image.asset('assets/space.png').image
            )
        ),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text('Your tickets have been purchased. Look forward to seeing you there!', textAlign: TextAlign.center, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: KColors.textColor),),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 40),
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: AppButton(
                  text: 'GOT IT',
                  bgColor: KColors.mainAccent,
                  onPressed: (){
                    context.pop();
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}