import 'package:flutter/material.dart';

import '../theme/colors.dart';

class AppButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? bgColor;
  final bool loading;
  const AppButton({Key? key, required this.text, required this.onPressed, this.loading = false, this.bgColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 51,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16)
              ),
              backgroundColor: bgColor ?? KColors.mainAccent
          ),
          onPressed: loading ? null : onPressed, child: loading ? Center(child: CircularProgressIndicator(),) : Text(text, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),)),
    );
  }
}
