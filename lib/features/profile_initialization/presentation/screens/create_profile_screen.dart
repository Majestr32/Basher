import 'dart:developer';
import 'dart:io';

import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/utills/image_picker.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/validators/validators.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/back_button.dart';
import '../../../../shared/domain/entities/user/user.dart';
import '../../../auth/presentation/blocs/auth_bloc.dart';
import '../../../auth/presentation/widgets/auth_country_picker.dart';
import '../../../auth/presentation/widgets/auth_dob_picker.dart';
import '../../../auth/presentation/widgets/auth_textfield.dart';
import '../../../auth/presentation/widgets/bg.dart';
import '../blocs/initialize_user/profile_initialization_bloc.dart';

class CreateProfileScreen extends StatefulWidget {
  const CreateProfileScreen({Key? key}) : super(key: key);

  @override
  State<CreateProfileScreen> createState() => _CreateProfileScreenState();
}

class _CreateProfileScreenState extends State<CreateProfileScreen> {
  final _nameController = TextEditingController();
  final _dobController = TextEditingController();
  final _cityController = TextEditingController();

  String? _nameError;
  String? _dobError;
  String? _cityError;

  String? _photoUrl;
  String? _selectedCountry;
  String? _gender;

  @override
  void dispose() {
    _nameController.dispose();
    _dobController.dispose();
    _cityController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileInitializationBloc, ProfileInitializationState>(
  listener: (context, state) {
    state.maybeWhen(
      error: (e){
        AppToast.instance.showError(context, e.message);
      },
        initialized: (user){
          context.go(RouteNames.home);
        },
        orElse: (){});
  },
  child: Scaffold(
      body: Stack(
        children: [
          Bg(),
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 30
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60,),
                    Text('Create profile', style: TextStyle(fontSize: 32, color: KColors.textColor),),
                    Text('Let get us know each other', style: TextStyle(fontSize: 12, color: KColors.textColor, fontWeight: FontWeight.w200),),
                    SizedBox(height: 20,),
                    Center(
                      child: _profilePicker(
                          imgPath: _photoUrl,
                          onTap: () async{
                       final pickedPhoto = await showPhotoActionSheet(context);
                       if(pickedPhoto == null){
                         return;
                       }
                        setState(() {
                          _photoUrl = pickedPhoto;
                        });
                      }),
                    ),
                    SizedBox(height: 20,),
                    AuthTextField(
                      keyboard: TextInputType.name,
                      controller: _nameController,
                      error: _nameError,
                      onChanged: (val){
                        setState(() {
                          _nameError = _validateName(val);
                        });
                      },
                      hint: 'Name', icon: FontAwesomeIcons.solidUser,),
                    SizedBox(height: 20,),
                    AuthDatePicker(
                      controller: _dobController,
                      error: _dobError,
                      initial: _dobController.text.isEmpty ? null : _dobController.text.date,
                      onDateSelected: (val){
                        setState(() {
                          _dobController.text = val.formatted;
                          _dobError = _validateBirthday(val.formatted);
                        });
                      },
                      hint: 'Date of birth', icon: FontAwesomeIcons.cakeCandles,),
                    SizedBox(height: 20,),
                    CountryPicker(
                      selectedCountry: _selectedCountry,
                      onChanged: (val){
                        setState(() {
                          _selectedCountry = val;
                        });
                      },
                    ),
                    SizedBox(height: 20,),
                    AuthTextField(
                        keyboard: TextInputType.text,
                      controller: _cityController,
                      error: _cityError,
                      onChanged: (val){
                        setState(() {
                          _cityError = _validateCity(val);
                        });
                      },
                      icon: FontAwesomeIcons.city,
                        hint: 'City'),
                    SizedBox(height: 20,),
                    Center(child: Text('Gender', style: TextStyle(fontSize: 14, color: KColors.textColor, fontWeight: FontWeight.w500),)),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                      _choiceBloc(icon: FontAwesomeIcons.mars, text: 'Man', selected: _gender == Gender.man.str, onTap: (){
                        setState(() {
                          _gender = Gender.man.str;
                        });
                      }),
                      _choiceBloc(icon: FontAwesomeIcons.venus, text: 'Woman', selected: _gender == Gender.woman.str, onTap: (){
                        setState(() {
                          _gender = Gender.woman.str;
                        });
                      }),
                        _choiceBloc(icon: FontAwesomeIcons.genderless, text: 'Other', selected: _gender == Gender.other.str, onTap: (){
                          setState(() {
                            _gender = Gender.other.str;
                          });
                        }),
                    ],),
                    SizedBox(height: 30,),
                    AppButton(text: 'Create', onPressed: (){
                      setState((){
                        _nameError = _validateName(_nameController.text);
                        _dobError = _validateBirthday(_dobController.text);
                        _cityError = _validateCity(_cityController.text);
                      });
                      if([_nameError,_dobError,_cityError].any((element) => element != null)){
                        return;
                      }
                      if(_selectedCountry == null){
                        AppToast.instance.showError(context, 'Country is not selected');
                        return;
                      }
                      if(_gender == null){
                        AppToast.instance.showError(context, 'Gender is not selected');
                        return;
                      }
                      final dob = DateFormat('dd.MM.yyyy').parse(_dobController.text);
                      final userToSave = User(uid: context.read<ProfileInitializationBloc>().state.userUid!, photoUrl: _photoUrl, name: _nameController.text, dob: dob, gender: Gender.fromString(_gender!), country: _selectedCountry!, city: _cityController.text, role: Role.reveller);
                      context.read<ProfileInitializationBloc>().add(ProfileInitializationEvent.registerUser(user: userToSave));
                    },),
                    SizedBox(height: 30,)
                  ],
                ),
              ),
            ),
          ),
          SafeArea(
            child: BackArrow(onTap: (){
              context.read<AuthBloc>().add(AuthEvent.signOut());
            },),
          ),
        ],
      ),
    ),
);
  }

  Widget _choiceBloc({required IconData icon, required String text, bool selected = false, required VoidCallback onTap}){
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 86,
        height: 86,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: selected ? KColors.mainAccent : KColors.white
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: selected ? KColors.white : KColors.mainAccent,),
              SizedBox(height: 10,),
              Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: selected ? KColors.white : KColors.mainAccent,),)
            ],
          ),
        ),
      ),
    );
  }

  Widget _profilePicker({String? imgPath,required VoidCallback onTap}){
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(255),
          color: imgPath != null ? null : Color(0xFF8B8B8F).withOpacity(0.08),
        image: imgPath == null ? null : DecorationImage(
          fit: BoxFit.cover,
          image: Image.file(File(imgPath)).image
        )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            imgPath != null ? SizedBox.shrink() : Center(
              child: Icon(FontAwesomeIcons.solidUser, color: KColors.lightGrey,),
            ),
            InkWell(
              onTap: onTap,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: KColors.mainAccent,
                    child: Icon(FontAwesomeIcons.camera, color: KColors.bgColor,),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateName(String val) => val.isEmpty ? 'Name can`t be empty' : null;
  String? _validateCity(String val) => val.isEmpty ? 'City must be specified' : null;

  String? _validateBirthday(String val) => val.isEmpty ? 'Date of birth can`t be empty' : null;

}
