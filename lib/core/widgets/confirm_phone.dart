import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/theme/gradients.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/auth/presentation/widgets/bg.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ConfirmPhone extends StatefulWidget {
  final Function(PhoneNumber) onInputChanged;
  final VoidCallback onSendTap;
  final String backArrowText;
  final VoidCallback onBackArrowTap;
  final Future<bool> Function() onWillPop;
  final String title;
  final String subtitle;
  const ConfirmPhone({Key? key, required this.onInputChanged, required this.onSendTap, required this.backArrowText, required this.onBackArrowTap, required this.onWillPop, required this.title, required this.subtitle}) : super(key: key);

  @override
  State<ConfirmPhone> createState() => _ConfirmPhoneState();
}

class _ConfirmPhoneState extends State<ConfirmPhone> {

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: widget.onWillPop,
      child: Scaffold(
        body: Stack(
          children: [
            const Bg(),
            SafeArea(
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 80,),
                        Text(widget.title, style: TextStyle(fontSize: 32, color: KColors.textColor),),
                        const SizedBox(height: 20,),
                        Text(widget.subtitle, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: KColors.textColor),),
                        const Spacer(flex: 2,),
                        const SizedBox(height: 20,),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFD7D7D7),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 4),
                          child: Theme(
                            data: ThemeData(
                              canvasColor: KColors.bgColor
                            ),
                            child: InternationalPhoneNumberInput(
                              selectorConfig: const SelectorConfig(
                                selectorType: PhoneInputSelectorType.DIALOG,
                                leadingPadding: 10
                              ),
                              countrySelectorScrollControlled: false,
                              textStyle: TextStyle(color: KColors.textColor),
                              cursorColor: KColors.mainAccent,
                              selectorTextStyle: TextStyle(color: KColors.textColor),
                              inputDecoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(16)
                                ),
                                fillColor: const Color(0xFFCDCDCD),
                                filled: true
                              ),
                              onInputChanged: widget.onInputChanged,
                            ),
                          ),
                        ),
                        const Spacer(flex: 3,),
                        Center(
                          child: AppButton(
                              onPressed: widget.onSendTap, text: 'Send', bgColor: KColors.mainAccent,),
                        ),
                        const SizedBox(height: 40,)
                      ],
                    ),
                  ),
                  BackArrow(onTap: widget.onBackArrowTap,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
