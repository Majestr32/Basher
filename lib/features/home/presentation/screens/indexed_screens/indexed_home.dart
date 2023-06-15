
import 'dart:async';

import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/refreshables/refreshables.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/utills/debouncer.dart';
import 'package:allxclusive/core/widgets/big_event_tile.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/core/widgets/user_photo.dart';
import 'package:allxclusive/features/home/domain/entities/filter_settings/filter_settings.dart';
import 'package:allxclusive/features/home/presentation/blocs/home_data_bloc/home_data_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:allxclusive/shared/domain/entities/user/user.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/theme/colors.dart';
import '../../../../profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';

class IndexedHome extends StatefulWidget {
  const IndexedHome({Key? key}) : super(key: key);

  @override
  State<IndexedHome> createState() => _IndexedHomeState();
}

class _IndexedHomeState extends State<IndexedHome> {

  final TextEditingController _controller = TextEditingController();

  final ScrollController _thisWeekEventsController = ScrollController();
  final ScrollController _newEventsController = ScrollController();
  final ScrollController _filteredEventsController = ScrollController();

  bool _canAdd = true;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _thisWeekEventsController.addListener(() {
      _ifOverscrollExecute(_thisWeekEventsController, 300, () {
        context.read<HomeDataBloc>().add(HomeDataEvent.loadMoreWeekEvents());
      });
    });
    _newEventsController.addListener(() {
      _ifOverscrollExecute(_newEventsController, 1500, () {
        if(context.read<HomeDataBloc>().state.isFiltered){
          context.read<HomeDataBloc>().add(HomeDataEvent.loadMoreFilteredEvents());
        }else{
          context.read<HomeDataBloc>().add(HomeDataEvent.loadMoreNewEvents());
        }
      });
    });
  }

  void _ifOverscrollExecute(ScrollController controller, double extendAfter, VoidCallback execute){
    if(controller.position.extentAfter < extendAfter && _canAdd){
      _canAdd = false;
      execute.call();
      Future.delayed(Duration(seconds: 2), () => setState((){_canAdd = true;}));
    }
  }

  @override
  Widget build(BuildContext context) {
    if(context.watch<ProfileInitializationBloc>().state.user == null){
      return SizedBox.shrink();
    }
    return BlocConsumer<HomeDataBloc, HomeDataState>(
      listener: (context,state){
        if(state.filterSettings?.minDate != null){
          _controller.clear();
        }
      },
  builder: (context, state) {
    return SafeArea(
      child: RefreshIndicator(
        onRefresh: () => refreshHome(context),
        child: Stack(
          children: [
            !state.isLoaded
      ? Center(
      child: CircularProgressIndicator(),
      ) : SingleChildScrollView(
              controller: _newEventsController,
              physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 80,),
            state.isFiltered ? _filteredEvents(state)  : _nonFiltered(state),
          ],
        ),
        ),
            Column(children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(children: [
                  SizedBox(height: 25,),
                  Row(
                    children: [
                      Expanded(
                        child: _searchField((val){
                          context.read<HomeDataBloc>().add(HomeDataEvent.searchQueryChanged(searchQuery: val));
                        }),
                      ),
                      IconButton(icon: Icon(FontAwesomeIcons.filter, size: 20, color: KColors.mainAccent,), onPressed: (){
                        context.push(RouteNames.filtering);
                      }, )
                    ],
                  ),
                  SizedBox(height: 10,),
                ],),
              ),
            ],)
          ],
        ),
      ),
    );
  },
);
  }

  Widget _filteredEvents(HomeDataState state){
    return ListView.builder(
        controller: _filteredEventsController,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemCount: state.filteredEvents!.length,
        itemBuilder: (context,i){
          final event = state.filteredEvents![i].eventModel;
          return Container(
            margin: EdgeInsets.only(top: 40),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: BigEventTile(title: event.name,
                membersCount: event.totalMembers,
                minPrice: '50 \$',
                imgPath: state.filteredEvents![i].eventModel.imgPath!, date: state.filteredEvents![i].eventModel.date, location: state.filteredEvents![i].eventModel.location,
                onTap: (){
                  context.push(RouteNames.eventDetails, extra: state.filteredEvents![i]);
                }),
          );
        });
  }

  Widget _nonFiltered(HomeDataState state){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 41,),
        state.thisWeekEvents!.isEmpty ? SizedBox.shrink() : Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text('Upcoming events', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: KColors.textColor),)),
        state.thisWeekEvents!.isEmpty ? SizedBox.shrink() : Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 200,
          child: ListView.builder(
              shrinkWrap: true,
              controller: _thisWeekEventsController,
              scrollDirection: Axis.horizontal,
              itemCount: state.thisWeekEvents!.length,
              itemBuilder: (context,i){
                return Container(
                    margin: EdgeInsets.only(right: 15, left: 20),
                    child: _thisWeekEventTile(
                        onTap: (){
                          context.push(RouteNames.eventDetails, extra: state.thisWeekEvents![i]);
                        },
                        title: state.thisWeekEvents![i].eventModel.name, context: context, imgPath: state.thisWeekEvents![i].eventModel.imgPath!, date: state.thisWeekEvents![i].eventModel.date));
              }),
        ),
        state.thisWeekEvents!.isEmpty ? SizedBox.shrink() : Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text('Tables & Events', style: TextStyle(fontSize: 26, fontWeight: FontWeight.w700, color: KColors.textColor),),
        ),
        ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.newEvents!.length,
            itemBuilder: (context,i){
              return Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: BigEventTile(title: state.newEvents![i].eventModel.name,
                    membersCount: state.newEvents![i].eventModel.totalMembers,
                    minPrice: '50 \$',
                    imgPath: state.newEvents![i].eventModel.imgPath!, date: state.newEvents![i].eventModel.date, location: state.newEvents![i].eventModel.location,
                    onTap: (){
                      context.push(RouteNames.eventDetails, extra: state.newEvents![i]);
                    }),
              );
            }),
      ],
    );
  }

  Widget _thisWeekEventTile({required String title, required BuildContext context, required String imgPath, required DateTime date, required VoidCallback onTap}){
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
              width: 170,
              child: ShimmerImage(
                radius: 16,
                url: imgPath,
              )
            ),
            SizedBox(height: 8,),
            Text(title, overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 14, fontWeight: FontWeight.w600),),
            SizedBox(height: 2,),
            Row(
              children: [
                Icon(FontAwesomeIcons.solidCalendarDays, size: 12, color: KColors.mainAccent,),
                SizedBox(width: 10,),
                Text(date.formattedTexted, overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
              ],
            ),
            Row(
              children: [
                Icon(FontAwesomeIcons.locationDot, size: 12, color: KColors.mainAccent,),
                SizedBox(width: 10,),
                Text('1.5 km away', overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor, fontSize: 12, fontWeight: FontWeight.w300),),
              ],
            )
          ],
        ),
      ),
    );
  }

  final Debouncer _textfieldDebouncer = Debouncer(milliseconds: 500);

  Widget _searchField(Function(String) onTextChanged){
    return TextField(
      controller: _controller,
      style: TextStyle(color: KColors.textColor),
      onChanged: (val) => _textfieldDebouncer.run(() {
        onTextChanged.call(val);
      }),
      decoration: InputDecoration(
        prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass, color: KColors.lightGrey,),
        contentPadding: EdgeInsets.symmetric(vertical: 10),
        hintText: 'Search',
        hintStyle: TextStyle(fontSize: 14, color: KColors.lightGrey),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFF888888).withOpacity(0.25), width: 1),
            borderRadius: BorderRadius.circular(8)
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: KColors.mainAccent, width: 1),
            borderRadius: BorderRadius.circular(8)
        ),
        isDense: true,
        filled: true,
        fillColor: KColors.bgColor.withOpacity(0.4),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFF888888).withOpacity(0.25), width: 1),
          borderRadius: BorderRadius.circular(8)
        )
      ),
    );
  }
}
