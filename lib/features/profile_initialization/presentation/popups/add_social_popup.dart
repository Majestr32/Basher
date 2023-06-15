


import 'dart:developer';

import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../shared/domain/entities/social_link/social_link.dart';
import '../../../auth/presentation/widgets/auth_social_picker.dart';
import '../../../auth/presentation/widgets/auth_textfield.dart';


Future<SocialLink?> openAddSocialPopup(BuildContext context,) async{
  SocialLink? socialLink;
  await showDialog(context: context, builder: (context){
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16),
      backgroundColor: KColors.bgColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      child: StatefulBuilder(
          builder: (context,setState) => _AddSocialPopup(onSubmit: (social){
            socialLink = social;
          },)),
    );
  });
  return socialLink;
}

class _AddSocialPopup extends StatefulWidget {
  final Function(SocialLink social) onSubmit;
  const _AddSocialPopup({Key? key, required this.onSubmit}) : super(key: key);

  @override
  State<_AddSocialPopup> createState() => _AddSocialPopupState();
}

class _AddSocialPopupState extends State<_AddSocialPopup> {
  final _nicknameController = TextEditingController();
  final _urlController = TextEditingController();

  String _social = SocialLinks.values.first.name;

  String? _nicknameError;
  String? _urlError;

  @override
  void dispose() {
    _nicknameController.dispose();
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: double.infinity,
      child: IntrinsicHeight(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                  onTap: (){
                    Navigator.of(context, rootNavigator: true).pop();
                  },
                  child: Icon(FontAwesomeIcons.solidCircleXmark, color: KColors.errorColor,)),
            ),
            SizedBox(height: 10,),
            Text('Social', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
            SizedBox(height: 10,),
            SocialPicker(selectedSocial: _social, onChanged: (val){
              setState(() {
                _social = val!;
              });
            }),
            SizedBox(height: 10,),
            Text('Username', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
            SizedBox(height: 10,),
            AuthTextField(
                keyboard: TextInputType.text,
              error: _nicknameError,
              controller: _nicknameController,
                onChanged: (val){
                  setState(() {
                    _nicknameError = _validateNickname(val);
                  });
                },
                hint: ''),
            SizedBox(height: 10,),
            Text('Link', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
            SizedBox(height: 10,),
            AuthTextField(
                keyboard: TextInputType.text,
              error: _urlError,
              controller: _urlController,
                onChanged: (val){
                  setState(() {
                    _urlError = _validateUrl(val);
                  });
                },
                hint: ''),
            SizedBox(height: 15,),
            AppButton(text: 'Add', onPressed: (){
              setState(() {
                _nicknameError = _validateNickname(_nicknameController.text);
                _urlError = _validateUrl(_urlController.text);
              });

              if([_urlError,_nicknameError].any((e) => e != null)){
                return;
              }

              widget.onSubmit.call(SocialLink(social: SocialLinks.fromName(_social), url: _urlController.text, nickname: _nicknameController.text));

              Navigator.of(context, rootNavigator: true).pop();
            }),
          ],
        ),
      ),
    );
  }

  String? _validateNickname(String val) => val.isEmpty ? 'Nickname can`t be empty' : null;
  String? _validateUrl(String val) => val.isEmpty ? 'Link can`t be empty' : null;
}
