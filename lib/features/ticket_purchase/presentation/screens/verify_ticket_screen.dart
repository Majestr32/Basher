import 'dart:math';

import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/qr.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:flutter/material.dart';

class VerifyTicketScreen extends StatelessWidget {
  final String qrCode;
  const VerifyTicketScreen({required this.qrCode, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 80, left: 32, right: 32),
              child: Text('Verify ticket', style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.bold, fontSize: 32),),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.width * 0.6,
                child: Stack(
                  children: [
                    _angle(),
                    Align(
                      alignment: Alignment.topRight,
                      child: Transform.rotate(
                          angle: pi / 2,
                          child: _angle()),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Transform.rotate(
                          angle: - pi / 2,
                          child: _angle()),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Transform.rotate(
                          angle: pi,
                          child: _angle()),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.6,
                      height: MediaQuery.of(context).size.width * 0.6,
                      child: Padding(
                        padding: EdgeInsets.only(left: 18, right: 16, top: 20),
                        child: Qr(
                          content: qrCode,
                          backgroundColor: KColors.textColor,
                          mainColor: KColors.bgColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BackArrow()
          ],
        ),
      ),
    );
  }

  Widget _angle(){
    return SizedBox(
      width: 51,
      height: 51,
      child: Stack(
        children: [
          Container(
            width: 5,
            height: 51,
            color: KColors.textColor,
          ),
          Container(
            width: 51,
            height: 5,
            color: KColors.textColor,
          ),
        ],
      ),
    );
  }
}
