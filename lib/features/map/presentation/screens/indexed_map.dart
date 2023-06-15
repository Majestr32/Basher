import 'dart:developer';

import 'package:allxclusive/core/consts/map_style.dart';
import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/debouncer.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/features/map/domain/repositories/map_event_repository_contract.dart';
import 'package:allxclusive/features/map/domain/use_cases/get_events_on_map.dart';
import 'package:allxclusive/features/map/domain/use_cases/get_selected_event.dart';
import 'package:allxclusive/features/map/presentation/blocs/map_events_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:allxclusive/shared/domain/entities/event/event.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/widgets/user_photo.dart';

class IndexedMap extends StatefulWidget {
  const IndexedMap({Key? key}) : super(key: key);

  @override
  State<IndexedMap> createState() => _IndexedMapState();
}

class _IndexedMapState extends State<IndexedMap> {
  GoogleMapController? _controller;
  final _autocompleteGlobalKey = GlobalKey<AutoCompleteTextFieldState<Event>>();

  late final MapEventsBloc _mapEventsBloc = MapEventsBloc(
      getSelectedEvent: GetSelectedEvent(mapEventRepository: context.read<MapEventRepository>()),
      getEventsOnMap: GetEventsOnMap(mapEventRepository: context.read<MapEventRepository>()));

  Set<Marker> _markers = {};

  @override
  void initState() {
    super.initState();
    _mapEventsBloc.add(const MapEventsEvent.fetchEvents());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<MapEventsBloc,MapEventsState>(
      bloc: _mapEventsBloc,
      listener: (context,state){
        state.maybeMap(
            loaded: (state){
              _markers = state.events.map((e) => Marker(markerId: MarkerId(e.eventModel.lat.toString()+e.eventModel.ln.toString()),
                  onTap: (){
                    _mapEventsBloc.add(MapEventsEvent.selectEvent(event: e));
                  },
                  position: LatLng(e.eventModel.lat!, e.eventModel.ln!))).toSet();
              if(state.selectedEvent == null){
                _autocompleteGlobalKey.currentState?.updateSuggestions(_mapEventsBloc.state.events ?? []);
              }
              setState(() {});
            },
            orElse: (){});
      },
      child: Stack(
        children: [
          GoogleMap(
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onTap: (_){
              _mapEventsBloc.add(const MapEventsEvent.selectEvent(event: null));
            },
              onMapCreated: (controller) async{
                setState((){
                  _controller = controller;
                });
                final permission = await Geolocator.requestPermission();
                if(permission != LocationPermission.always && permission != LocationPermission.whileInUse){
                  return;
                }
                final position = await Geolocator.getCurrentPosition();
                _controller?.moveCamera(CameraUpdate.newLatLng(LatLng(position.latitude, position.longitude)));
              },
              markers: _markers,
              zoomControlsEnabled: false,
              initialCameraPosition: const CameraPosition(bearing: 192.8334901395799,
              target: LatLng(37.43296265331129, -122.08832357078792),
              tilt: 59.440717697143555,
              zoom: 19.151926040649414)),
          SafeArea(child: Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: _searchField((val){
                if(val.isEmpty){
                  return;
                }
                final place = _mapEventsBloc.state.findByName(query: val);
                if(place == null){
                  return;
                }
                _controller?.moveCamera(CameraUpdate.newLatLng(LatLng(place.eventModel.lat!, place.eventModel.ln!)));
              }))),
          _mapEventsBloc.state.selectedEvent == null ? const SizedBox.shrink() : StreamBuilder(
            stream: Geolocator.getPositionStream(),
            builder: (context,state) => !state.hasData ? SizedBox.shrink() : Align(
                alignment: Alignment.topCenter,
                child: Container(
                    margin: const EdgeInsets.only(top: 140),
                    child: _distanceBadge(
                      LatLng(state.data!.latitude, state.data!.longitude),
                      LatLng(_mapEventsBloc.state.selectedEvent!.eventModel.lat!, _mapEventsBloc.state.selectedEvent!.eventModel.ln!)
                    ))),
          ),
          _mapEventsBloc.state.selectedEvent == null ? const SizedBox.shrink() : Align(alignment: Alignment.bottomCenter,
          child: Container(width: double.infinity, height: 240,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18),
                        child: Text('Selected event', style: TextStyle(color: KColors.textColor),)),
                    Expanded(
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                        height: 50,
                        child: Stack(
                            children: (){
                              final friendsAttending = context.read<SuggestFriendsBloc>().state.getFriendsFromUid(_mapEventsBloc.state.selectedEvent!.friendsUid);
                              final moreThan5Friends = friendsAttending.length > 5;
                              return [...List.generate(moreThan5Friends ? 5 : friendsAttending.length, (index) => Positioned(
                                right: index * 16 + (moreThan5Friends ? 32 : 0),
                                bottom: 0,
                                child: UserPhoto(
                                  photoUrl: friendsAttending[index].photoUrl,
                                  borderRadius: 64,
                                  width: 48,
                                  height: 48,
                                ),
                              )), moreThan5Friends ? Positioned(
                                  bottom: 12,
                                  right: 12,
                                  child: Text("+" + (friendsAttending.length - 5).toString(), style: TextStyle(color: KColors.textColor),)) : const Positioned(
                                  right: 0,
                                  bottom: 0,
                                  child: SizedBox.shrink())];
                            }()
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 11,),
                GestureDetector(
                  onTap: (){
                    context.push(RouteNames.eventDetails, extra: _mapEventsBloc.state.selectedEvent);
                  },
                  child: Container(
                    height: 130,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: const Color(0xFFECECEC),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 3,
                              child: ShimmerImage(
                                radius: 8,
                                url: _mapEventsBloc.state.selectedEvent!.eventModel.imgPath!,
                              )),
                          const SizedBox(width: 16,),
                          Expanded(
                              flex: 4,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(_mapEventsBloc.state.selectedEvent!.eventModel.name, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600),),
                                  Text(_mapEventsBloc.state.selectedEvent!.eventModel.date.formattedTexted, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 8, color: KColors.lightGrey),),
                                  Text(_mapEventsBloc.state.selectedEvent!.eventModel.description, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 10, fontWeight: FontWeight.w300), maxLines: 3,),
                                  const Spacer(),
                                  Row(
                                    children: [
                                      Icon(FontAwesomeIcons.solidBuilding, color: KColors.lightGrey,),
                                      const SizedBox(width: 9,),
                                      Expanded(
                                        child: FittedBox(
                                          alignment: Alignment.centerLeft,
                                            fit: BoxFit.scaleDown,
                                            child: Text(_mapEventsBloc.state.selectedEvent!.eventModel.placeName, style: const TextStyle(fontSize: 10),)),
                                      )
                                    ],
                                  )
                                ],
                              )),
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),),)
        ],
      ),
    );
  }

  Widget _distanceBadge(LatLng currPos, LatLng eventPos){
    final distance = Geolocator.distanceBetween(currPos.latitude, currPos.longitude, eventPos.latitude, eventPos.longitude) / 1000;
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        color: KColors.mainAccent.withOpacity(0.5),
        boxShadow: [
          BoxShadow(color: KColors.textColor.withOpacity(0.1), offset: const Offset(1,2), blurRadius: 16)
        ]
      ),
      child: Center(
        child: Text('${distance.toStringAsFixed(1)} km', style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w500, fontSize: 12),),
      ),
    );
  }

  Widget _searchField(Function(String) onTextChanged){
    return AutoCompleteTextField<Event>(
      key: _autocompleteGlobalKey,
      style: TextStyle(color: KColors.textColor),
      itemBuilder: (context,event) => Container(
        color: KColors.bgColor,
          height: 45,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Icon(FontAwesomeIcons.locationDot, color: KColors.mainAccent,),
                const SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(event.eventModel.name, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.w600, color: KColors.textColor),)),
                      FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(event.eventModel.location, overflow: TextOverflow.ellipsis, style: TextStyle(color: KColors.textColor),)),
                    ],
                  ),
                ),
              ],
            ),
          )),
      suggestions: [],
      clearOnSubmit: false,
      itemSorter: (a,b) => a.eventModel.location.compareTo(b.eventModel.location),
      itemSubmitted: (a) => onTextChanged.call(a.eventModel.location),
      textSubmitted: onTextChanged,
      itemFilter: (item,q) => item.eventModel.location.toLowerCase().contains(q.toLowerCase()),
      cursorColor: KColors.mainAccent,
      decoration: InputDecoration(
          prefixIcon: Icon(FontAwesomeIcons.magnifyingGlass, color: KColors.lightGrey,),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          hintText: 'Location',
          hintStyle: TextStyle(fontSize: 14, color: KColors.lightGrey),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: const Color(0xFF888888).withOpacity(0.25), width: 1),
              borderRadius: BorderRadius.circular(8)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: KColors.mainAccent, width: 1),
              borderRadius: BorderRadius.circular(8)
          ),
          isDense: true,
          fillColor: KColors.textColor.withOpacity(0.1),
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide(color: const Color(0xFF888888).withOpacity(0.25), width: 1),
              borderRadius: BorderRadius.circular(8)
          )
      ),
    );
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }
}