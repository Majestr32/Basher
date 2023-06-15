import 'dart:developer';

import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/utills/countries.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../../shared/domain/entities/social_link/social_link.dart';
import '../../../../profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';

class IndexedProfile extends StatefulWidget {
  const IndexedProfile({Key? key}) : super(key: key);

  @override
  State<IndexedProfile> createState() => _IndexedProfileState();
}

class _IndexedProfileState extends State<IndexedProfile> {
  late final _scrollController = ScrollController()..addListener(_onScroll);
  double _offset = 0;

  void _onScroll(){
    setState(() {
      _offset = _scrollController.offset;
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileInitializationBloc, ProfileInitializationState>(
  builder: (context, state) {
    if(state.user == null){
      return Container();
    }
    return SingleChildScrollView(
      controller: _scrollController,
      physics: AlwaysScrollableScrollPhysics(),
      child: SafeArea(
        child: Stack(
          children: [
            Container(
              margin: EdgeInsets.only(top: 46),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 76,
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          width: 76,
                          height: 76,
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(64),
                              child: _profileImage(context: context, imgPath: state.user!.photoUrl))),
                      SizedBox(width: 19,),
                      Expanded(
                        child: SizedBox(
                          height: 76,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Spacer(),
                              Text(state.user!.name, maxLines: 2, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600, color: KColors.textColor),),
                              SizedBox(height: 6,),
                              Container(
                                height: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  color: KColors.lightGrey
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                                  child: Text('30 events', style: TextStyle(fontSize: 12, color: KColors.white),),
                                ),
                              ),
                              Spacer()
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 64,
                        height: 64,
                        child: Center(
                          child: Wrap(
                            spacing: 6,
                            runSpacing: 6,
                            children: [
                              Icon(FontAwesomeIcons.instagram),
                              Icon(FontAwesomeIcons.instagram),
                              Icon(FontAwesomeIcons.instagram),
                              Icon(FontAwesomeIcons.instagram)
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 38,
              child: Stack(
                children: [
                  Center(
                    child: Text('Profile', style: TextStyle(color: KColors.textColor, fontSize: 18, fontWeight: FontWeight.bold),),
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                      onTap: (){
                        context.push(RouteNames.settings);
                      },
                      child: Container(width: 38, height: 38,
                        margin: EdgeInsets.only(right: 15, top: 5),
                        child: Center(
                          child: Icon(FontAwesomeIcons.gear, color: KColors.lightGrey,),
                        ),),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  },
);
  }

  Widget _social({required SocialLink social}){
    return Row(
      children: [
        SvgPicture.asset(social.social.assetImg, width: 32, height: 32,),
        SizedBox(width: 10,),
        GestureDetector(
            onTap: () async{
              final uri = Uri.parse(social.url);
              if(await canLaunchUrl(uri)){
                await launchUrl(uri);
              }
            },
            child: Text(social.nickname, style: TextStyle(fontSize: 12, color: KColors.mainAccent),))
      ],
    );
  }

  Widget _profileImage({String? imgPath, required BuildContext context}){
    return AspectRatio(
      aspectRatio: 1.2,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            color: imgPath != null ? null : Color(0xFF8B8B8F).withOpacity(0.08),
        ),
        child: ShimmerImage(
          url: imgPath,
          child: Stack(
            children: [
              imgPath != null ? SizedBox.shrink() : Center(
                child: Icon(FontAwesomeIcons.solidUser, color: KColors.lightGrey,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
