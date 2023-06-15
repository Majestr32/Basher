import 'dart:developer';
import 'dart:io';

import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/router/router.dart';
import '../../../../core/utills/image_picker.dart';
import '../../../../core/utills/toasts.dart';
import '../../../../core/validators/validators.dart';
import '../../../../core/widgets/app_button.dart';
import '../../../../shared/domain/entities/social_link/social_link.dart';
import '../../../../shared/domain/entities/user/user.dart';
import '../../../auth/presentation/widgets/auth_country_picker.dart';
import '../../../auth/presentation/widgets/auth_dob_picker.dart';
import '../../../auth/presentation/widgets/auth_textfield.dart';
import '../../../auth/presentation/widgets/bg.dart';
import '../blocs/initialize_user/profile_initialization_bloc.dart';
import '../popups/add_social_popup.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  late final _nameController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.name);

  late final _dobController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.dob.formatted);

  late final _cityController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.city);

  late final _phoneController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.phone);

  late final _bioController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.bio);

  late final _highlightsController = TextEditingController(text: context.read<ProfileInitializationBloc>().state.user!.highlights);

  String? _nameError;

  String? _dobError;

  String? _phoneError;

  String? _cityError;


  late String? _photoUrl = context.read<ProfileInitializationBloc>().state.user!.photoUrl;

  String? _selectedPhotoUrl;

  late List<SocialLink> _socialLinks = context.read<ProfileInitializationBloc>().state.user!.socials;

  late String? _selectedCountry = context.read<ProfileInitializationBloc>().state.user!.country;

  late String? _gender = context.read<ProfileInitializationBloc>().state.user!.gender.str;

  @override
  void dispose() {
    _nameController.dispose();
    _dobController.dispose();
    _cityController.dispose();
    _phoneController.dispose();
    _bioController.dispose();
    _highlightsController.dispose();
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
                      _profilePicker(
                        pickedImg: _selectedPhotoUrl,
                          defaultImg: _photoUrl,
                          onTap: () async{
                            final pickedPhoto = await showPhotoActionSheet(context);
                            if(pickedPhoto == null){
                              return;
                            }
                            setState(() {
                              _selectedPhotoUrl = pickedPhoto;
                            });
                          }),
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
                        initial: _dobController.text.date,
                        onDateSelected: (val){
                          setState(() {
                            _dobController.text = val.formatted;
                          });
                        },
                        hint: 'Date of birth', icon: FontAwesomeIcons.cakeCandles,),
                      SizedBox(height: 20,),
                      AuthTextField(
                          keyboard: TextInputType.phone,
                          controller: _phoneController,
                          error: _phoneError,
                          onChanged: (val){
                            setState(() {
                              _phoneError = validatePhoneNumber(val);
                            });
                          },
                          icon: FontAwesomeIcons.phone,
                          hint: 'Phone'),
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
                      SizedBox(height: 15,),
                      Text('BIO', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      SizedBox(height: 10,),
                      AuthTextField(
                          keyboard: TextInputType.text,
                          controller: _bioController,
                          multiline: true,
                          hint: ''),
                      SizedBox(height: 15,),
                      Text('HIGHLIGHTS', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      SizedBox(height: 10,),
                      AuthTextField(
                          keyboard: TextInputType.text,
                        multiline: true,
                          controller: _highlightsController,
                          hint: ''),
                      SizedBox(height: 20,),
                      Text('SOCIAL LINKS', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      ...List.generate(_socialLinks.length, (index){
                        return Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child: _social(social: _socialLinks[index]));
                      }),
                      SizedBox(height: 10,),
                      _addSocial(),
                      SizedBox(height: 15,),
                      Center(child: Text('Gender', style: TextStyle(fontSize: 12, color: KColors.textColor),)),
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
                      AppButton(text: 'Done', onPressed: (){
                        setState((){
                          _nameError = _validateName(_nameController.text);
                          _dobError = _validateBirthday(_dobController.text);
                          _cityError = _validateCity(_cityController.text);
                          _phoneError = validatePhoneNumber(_phoneController.text);
                        });
                        if([_nameError,_dobError,_cityError,_phoneError].any((element) => element != null)){
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
                        final userToSave = User(uid: context.read<ProfileInitializationBloc>().state.userUid!,
                            bio: _bioController.text,
                            socials: _socialLinks,
                            highlights: _highlightsController.text,
                            photoUrl: _selectedPhotoUrl, name: _nameController.text, dob: dob, gender: Gender.fromString(_gender!), phone: _phoneController.text, country: _selectedCountry!, city: _cityController.text, role: context.read<ProfileInitializationBloc>().state.user!.role);
                        log(userToSave.toJson().toString());
                        context.read<ProfileInitializationBloc>().add(ProfileInitializationEvent.editUser(user: userToSave, imgToUpdate: _selectedPhotoUrl));
                      },),
                      SizedBox(height: 30,)
                    ],
                  ),
                ),
              ),
            ),
            SafeArea(
              child: BackArrow(onTap: (){
                Navigator.of(context)..pop()..pop();
              },),
            ),
          ],
        ),
      ),
    );
  }

  Widget _social({required SocialLink social}){
    return Row(
      children: [
        SvgPicture.asset(social.social.assetImg, width: 32, height: 32,),
        SizedBox(width: 10,),
        Text(social.nickname, style: TextStyle(fontSize: 12, color: KColors.textColor),),
        Spacer(),
        GestureDetector(
            onTap: (){
              setState(() {
                _socialLinks = _socialLinks.where((s) => s != social).toList();
              });
            },
            child: Icon(FontAwesomeIcons.solidSquareMinus, color: KColors.errorColor,))
      ],
    );
  }

  Widget _addSocial(){
    return Row(
      children: [
        GestureDetector(
          onTap: () async{
            final social = await openAddSocialPopup(context);
            if(social == null){
              return;
            }
            setState(() {
              _socialLinks = [..._socialLinks,social];
            });
          },
          child: Container(
            width: 32,
            height: 32,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: KColors.lightGrey
            ),
            child: Center(child: Text('+', style: TextStyle(fontSize: 24, color: KColors.textColor),)),
          ),
        ),
        SizedBox(width: 10,),
        Text('Add new social link', style: TextStyle(fontSize: 12, color: KColors.textColor),)
      ],
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
            color: selected ? KColors.secondAccent : KColors.textColor
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 20, color: selected ? KColors.textColor : KColors.secondAccent,),
              SizedBox(height: 10,),
              Text(text, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12, color: selected ? KColors.textColor : KColors.secondAccent,),)
            ],
          ),
        ),
      ),
    );
  }

  Widget _profilePicker({String? pickedImg, String? defaultImg, required VoidCallback onTap}){
    return Container(
      height: 235,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: defaultImg != null || pickedImg != null ? null : Color(0xFF8B8B8F).withOpacity(0.08),
          image: pickedImg == null && defaultImg == null ? null : DecorationImage(
              fit: BoxFit.cover,
              image: pickedImg != null ? Image.file(File(pickedImg)).image : Image.network(defaultImg!).image
          )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            defaultImg != null || pickedImg != null ? SizedBox.shrink() : Center(
              child: Icon(FontAwesomeIcons.solidUser, color: KColors.lightGrey,),
            ),
            InkWell(
              onTap: onTap,
              child: Align(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: KColors.secondAccent,
                    child: Icon(FontAwesomeIcons.camera, color: KColors.textColor,),
                  )),
            ),
          ],
        ),
      ),
    );
  }

  String? _validateName(String val) => val.isEmpty ? 'Name can`t be empty' : null;

  String? _validateCity(String val) => val.isEmpty ? 'City must be specified' : null;

  String? _validateBirthday(String val) {
    try{
      final date = DateFormat('dd.MM.yyyy').parse(val);
      if(DateTime.now().difference(date).inDays > 380 && DateTime.now().difference(date).inDays < 47482){
        return null;
      }
      return 'Age is incorrect';
    }on FormatException catch(e){
      return 'Date format is incorrect';
    }
  }
}
