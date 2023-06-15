

import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/get_user_by_id.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/profile_details/profile_details_bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/utills/countries.dart';
import '../../../../shared/domain/entities/social_link/social_link.dart';

class ProfileDetailsScreen extends StatefulWidget {
  final String userUid;
  const ProfileDetailsScreen({required this.userUid, Key? key}) : super(key: key);

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  late final _scrollController = ScrollController()..addListener(_onScroll);
  late final ProfileDetailsBloc _profileDetailsBloc = ProfileDetailsBloc(getUserByIdCase: GetUserById(ticketPurchaseRepository: context.read<TicketPurchaseRepository>()));
  double _offset = 0;

  
  @override
  void initState() {
    super.initState();
    _profileDetailsBloc.add(ProfileDetailsEvent.fetchUserDetails(userUid: widget.userUid));
  }
  
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
    return BlocBuilder<ProfileDetailsBloc, ProfileDetailsState>(
      bloc: _profileDetailsBloc,
      builder: (context, state) {
        if(state.isLoading){
          return Scaffold(
            backgroundColor: KColors.bgColor,
            body: const Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Scaffold(
          backgroundColor: KColors.bgColor,
          body: CustomScrollView(
            controller: _scrollController,
            physics: const AlwaysScrollableScrollPhysics(),
            slivers: [
              SliverAppBar(
                backgroundColor: KColors.bgColor,
                foregroundColor: KColors.textColor,
                floating: false,
                leading: const BackArrow(),
                leadingWidth: 150,
                pinned: true,
                flexibleSpace: AnimatedOpacity(
                    opacity: clampDouble(1 - _offset / 100, 0, 1),
                    duration: const Duration(milliseconds: 100),
                    child: _profileImage(context: context, imgPath: state.user!.photoUrl)), collapsedHeight: 60, expandedHeight: 250,),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 10,),
                      Text(state.user!.name, style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: KColors.textColor),),
                      Row(
                        children: [
                          Text(CountriesProvider.findByName(state.user!.country).emoji),
                          const SizedBox(width: 5,),
                          Text("${state.user!.country}, ${state.user!.city}", style: TextStyle(color: KColors.textColor),),
                          const Spacer(),
                          Text('${state.user!.age} y.o', style: TextStyle(color: KColors.textColor, fontSize: 16)),
                        ],
                      ),
                      const SizedBox(height: 15,),
                      state.user!.bio.isEmpty ? const SizedBox.shrink() : Text('BIO', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      Text(state.user!.bio, style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w200,fontSize: 12),),
                      const SizedBox(height: 15,),
                      state.user!.highlights.isEmpty ? const SizedBox.shrink() : Text('HIGHLIGHTS', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      Text(state.user!.highlights, style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w200,fontSize: 12),),
                      const SizedBox(height: 15,),
                      state.user!.socials.isEmpty ? const SizedBox.shrink() : Text('SOCIAL LINKS', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      ...List.generate(state.user!.socials.length, (index){
                        return Container(
                            margin: const EdgeInsets.symmetric(vertical: 5),
                            child: _social(social: state.user!.socials[index]));
                      })
                    ],
                  ),
                ),
              )],
          ),
        );
      },
    );
  }

  Widget _social({required SocialLink social}){
    return Row(
      children: [
        SvgPicture.asset(social.social.assetImg, width: 32, height: 32,),
        const SizedBox(width: 10,),
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
            color: imgPath != null ? null : const Color(0xFF8B8B8F).withOpacity(0.08),
        ),
        child: ShimmerImage(
          url: imgPath,
          child: Stack(
            children: [
              imgPath != null ? const SizedBox.shrink() : Center(
                child: Icon(FontAwesomeIcons.solidUser, color: KColors.lightGrey,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
