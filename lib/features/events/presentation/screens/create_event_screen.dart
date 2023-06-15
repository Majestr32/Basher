import 'dart:developer';
import 'dart:io';

import 'package:allxclusive/core/app_icons/app_icons_icons.dart';
import 'package:allxclusive/core/consts/map_style.dart';
import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/features/auth/presentation/widgets/auth_suggest_textfield.dart';
import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter_google_places_sdk/flutter_google_places_sdk.dart' hide LatLng;
import 'package:geocoding/geocoding.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/app_button.dart';
import 'package:allxclusive/core/widgets/app_picker.dart';
import 'package:allxclusive/core/widgets/app_switch.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/features/auth/presentation/widgets/auth_textfield.dart';
import 'package:allxclusive/features/events/presentation/blocs/user_events/user_events_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../../../core/utills/image_picker.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../../../auth/presentation/widgets/auth_dob_picker.dart';

class CreateEventScreen extends StatefulWidget {
  final Event? eventToUpdate;
  const CreateEventScreen({Key? key, this.eventToUpdate}) : super(key: key);

  @override
  State<CreateEventScreen> createState() => _CreateEventScreenState();
}

class _CreateEventScreenState extends State<CreateEventScreen> {
  String? _photoUrl;

  late final _eventNameController = TextEditingController(text: widget.eventToUpdate?.eventModel.name ?? '');
  late final _placeNameController = TextEditingController(text: widget.eventToUpdate?.eventModel.placeName ?? '');
  late final _placeLocationController = TextEditingController(text: widget.eventToUpdate?.eventModel.location ?? '');
  late final _descriptionController = TextEditingController(text: widget.eventToUpdate?.eventModel.description ?? '');
  late final _dateController = TextEditingController(text: widget.eventToUpdate?.eventModel.date.formatted ?? '');
  late final _timeStartController = TextEditingController(text: widget.eventToUpdate?.eventModel.startTime.formattedTime ?? '');
  late final _timeEndController = TextEditingController(text: widget.eventToUpdate?.eventModel.endTime.formattedTime ?? '');
  late final _drinksEatsController = TextEditingController(text: widget.eventToUpdate?.eventModel.drinksEats ?? '');
  late final _peopleCountController = TextEditingController(text: widget.eventToUpdate?.eventModel.peopleCount.toString() ?? '');
  late final _manCountController = TextEditingController(text: widget.eventToUpdate?.eventModel.manCount?.toString() ?? '');
  late final _womanCountController = TextEditingController(text: widget.eventToUpdate?.eventModel.womanCount?.toString() ?? '');
  late final _termsConditionsController = TextEditingController(text: widget.eventToUpdate?.eventModel.termsLink ?? '');

  String? _eventNameError;
  String? _placeNameError;
  String? _placeLocationError;
  String? _descriptionError;
  String? _dateError;
  String? _timeStartError;
  String? _timeEndError;
  String? _drinksEatsError;
  String? _peopleCountError;
  String? _manCountError;
  String? _womanCountError;
  String? _termsConditionsError;

  late String _prioritizedMusic = widget.eventToUpdate?.eventModel.prioritizedMusic.name ?? EventMusics.clubNights.name;

  List<String> _lastSuggestions = [];

  @override
  void dispose() {
    _eventNameController.dispose();
    _placeNameController.dispose();
    _placeLocationController.dispose();
    _dateController.dispose();
    _timeStartController.dispose();
    _timeEndController.dispose();
    _descriptionController.dispose();
    _drinksEatsController.dispose();
    _peopleCountController.dispose();
    _manCountController.dispose();
    _womanCountController.dispose();
    _termsConditionsController.dispose();
    _controller?.dispose();
    super.dispose();
  }

  late bool _genderSeparately = widget.eventToUpdate == null ? false : widget.eventToUpdate!.eventModel.peopleCount == null;
  late bool _confirmationRequestRequired = widget.eventToUpdate == null ? false : widget.eventToUpdate!.eventModel.confirmationRequired;

  Set<Marker> _markers = {};

  GoogleMapController? _controller;

  final _autofillKey = GlobalKey<AutoCompleteTextFieldState<String>>();

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserEventsBloc, UserEventsState>(
  listener: (context, state) {
    state.maybeMap(
        error: (e){
          AppToast.instance.showError(context, e.failure.message);
        },
        addedEvent: (_){
          AppToast.instance.showSuccess(context, 'Added successfully event');
          context.pop();
        },
        updatedEvent: (_){
          AppToast.instance.showSuccess(context, 'Updated successfully event');
          context.pop();
        },
        orElse: (){});
  },
  child: Scaffold(
      backgroundColor: KColors.bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _profilePicker(
                    imgPath: _photoUrl,
                    eventToUpdate: widget.eventToUpdate,
                    onTap: () async{
                      final pickedPhoto = await showPhotoActionSheet(context);
                      if(pickedPhoto == null){
                        return;
                      }
                      setState(() {
                        _photoUrl = pickedPhoto;
                      });
                    }),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20,),
                      Text('Event name', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthTextField(
                        error: _eventNameError,
                          controller: _eventNameController,
                          hint: '', keyboard: TextInputType.name),
                      const SizedBox(height: 20,),
                      Text('Place name', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthTextField(
                        error: _placeNameError,
                          controller: _placeNameController,
                          hint: '', keyboard: TextInputType.text),
                      const SizedBox(height: 20,),
                      Text('Place location', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthSuggestTextField(
                        controller: _placeLocationController,
                        onChanged: (val) async{
                          _markers = await _createMarkers(input: val);
                          if(_markers.isNotEmpty){
                            await _moveToMarker(lat: _markers.first.position.latitude, ln: _markers.first.position.longitude);
                            _lastSuggestions = await _getMarkerLocationAddress(input: val);
                            _autofillKey.currentState?.updateSuggestions(_lastSuggestions);
                          }
                          setState(() {});
                        }, keyboard: TextInputType.streetAddress, hint: '', autoFillKey: _autofillKey, ),
                      SizedBox(height: 20,),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: SizedBox(
                          width: double.infinity,
                          height: 263,
                          child: GoogleMap(
                            initialCameraPosition: CameraPosition(target: LatLng(37.7749, -122.4194),
                              zoom: 12,),
                            markers: _markers,
                            onMapCreated: (controller) async{
                              await controller.setMapStyle(mapDarkStyle);
                              _controller = controller;
                              _markers = await _createMarkers(input: _placeLocationController.text);
                              setState(() {

                              });
                              if(_markers.isNotEmpty){
                                await _moveToMarker(lat: _markers.first.position.latitude, ln: _markers.first.position.longitude);
                              }
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 20,),
                      Text('Description', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthTextField(
                        error: _descriptionError,
                        controller: _descriptionController,
                        hint: '', keyboard: TextInputType.text, multiline: true,),
                      const SizedBox(height: 20,),
                      Text('Drinks Package', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthTextField(
                        error: _drinksEatsError,
                        controller: _drinksEatsController,
                        hint: '', keyboard: TextInputType.text, multiline: true,),
                      const SizedBox(height: 20,),
                      Text('Date', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthDatePicker(
                        startDate: DateTime.now(),
                        endDate: DateTime(DateTime.now().year + 2),
                        initial: _dateController.text.isNotEmpty ? _dateController.text.date : DateTime.now().add(Duration(days: 7)),
                        error: _dateError,
                        controller: _dateController,
                        hint: '', onDateSelected: (date){
                          setState(() {
                            _dateController.text = date.formatted;
                          });
                      },),
                      const SizedBox(height: 20,),
                      Text('Starts at', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthDatePicker(
                        initial: _timeStartController.text.isNotEmpty ? _timeStartController.text.time : null,
                        error: _timeStartError,
                        controller: _timeStartController,
                        hint: '', onDateSelected: (date){
                        setState(() {
                          _timeStartController.text = date.formattedTime;
                        });
                      }, pickTime: true,),
                      const SizedBox(height: 20,),
                      Text('Ends at', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthDatePicker(
                        initial: _timeEndController.text.isNotEmpty ? _timeEndController.text.time : null,
                        error: _timeEndError,
                        controller: _timeEndController,
                        hint: '', onDateSelected: (date){
                        setState(() {
                          _timeEndController.text = date.formattedTime;
                        });
                      }, pickTime: true,),
                      const SizedBox(height: 20,),
                      Text('Event type', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AppPicker(
                        selectedItem: _prioritizedMusic,
                          onChanged: (val){
                            setState(() {
                              _prioritizedMusic = val!;
                            });
                          },
                          items: EventMusics.values.map((e) => e.name).toList(),
                          hint: 'Select'),
                      const SizedBox(height: 20,),
                      Text('People attending this event', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 10,),
                      Text('* Limit the number of people or specify the Limit of each Gender Separately at your event', style: TextStyle(color: KColors.lightGrey,fontSize: 12),),
                      const SizedBox(height: 15),
                      _tileWithToggle(text: 'Gender separately', value: _genderSeparately, onChanged: (val) => setState((){_genderSeparately = val;})),
                      const SizedBox(height: 20,),
                      !_genderSeparately ? Row(
                        children: [
                          Icon(FontAwesomeIcons.users, color: KColors.mainAccent,),
                          const SizedBox(width: 20,),
                          Expanded(child: AuthTextField(
                            error: _peopleCountError,
                              controller: _peopleCountController,
                              hint: '', keyboard: TextInputType.number)),
                        ],
                      ) : Column(
                        children: [
                          Row(
                            children: [
                              Icon(AppIcons.man, color: KColors.mainAccent,),
                              const SizedBox(width: 20,),
                              Expanded(child: AuthTextField(
                                error: _manCountError,
                                  controller: _manCountController,
                                  hint: '', keyboard: TextInputType.number)),
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            children: [
                              Icon(AppIcons.woman, color: KColors.secondAccent,),
                              const SizedBox(width: 20,),
                              Expanded(child: AuthTextField(
                                error: _womanCountError,
                                  controller: _womanCountController,
                                  hint: '', keyboard: TextInputType.number)),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 20,),
                      Text('Terms & conditions', style: TextStyle(color: KColors.lightGrey,fontSize: 16),),
                      const SizedBox(height: 15,),
                      AuthTextField(
                        error: _termsConditionsError,
                          controller: _termsConditionsController,
                          hint: 'https://conditions.link', keyboard: TextInputType.text),
                      const SizedBox(height: 15),
                      _tileWithToggle(text: 'Confirmation request required', value: _confirmationRequestRequired, onChanged: (val) => setState((){_confirmationRequestRequired = val;})),
                      const SizedBox(height: 25),
                      AppButton(text: widget.eventToUpdate == null ? 'Create' : 'Update',
                          loading: context.watch<UserEventsBloc>().state.isLoading,
                          onPressed: () async{
                        _eventNameError = null;
                        _placeNameError = null;
                        _placeLocationError = null;
                        _descriptionError = null;
                        _dateError = null;
                        _timeStartError = null;
                        _timeEndError = null;
                        _drinksEatsError = null;
                        _peopleCountError = null;
                        _manCountError = null;
                        _womanCountError = null;
                        _termsConditionsError = null;

                        if(_photoUrl == null && widget.eventToUpdate == null){
                          AppToast.instance.showError(context, 'Photo can`t be empty');
                          return;
                        }

                        final eventName = _eventNameController.text;
                        if(eventName.isEmpty){
                          _eventNameError = 'Event name can`t be empty';
                        }

                        final description = _descriptionController.text;
                        if(eventName.isEmpty){
                          _descriptionError = 'Description can`t be empty';
                        }

                        final date = _dateController.text;
                        if(date.isEmpty){
                          _dateError = 'Date can`t be empty';
                        }

                        final timeStart = _timeStartController.text;
                        if(timeStart.isEmpty){
                          _timeStartError = 'Start time can`t be empty';
                        }

                        final timeEnd = _timeEndController.text;
                        if(timeEnd.isEmpty){
                          _timeEndError = 'End time can`t be empty';
                        }

                        final placeLocation = _placeLocationController.text;
                        if(placeLocation.isEmpty){
                          _placeLocationError = 'Place location can`t be empty';
                        }else if(!_lastSuggestions.contains(placeLocation)){
                          _placeLocationError = 'Please enter full location';
                        }

                        final placeName = _placeNameController.text;
                        if(placeName.isEmpty){
                          _placeNameError = 'Place name can`t be empty';
                        }

                        final manCount = _manCountController.text;
                        final womanCount = _womanCountController.text;
                        final peopleCount = _peopleCountController.text;

                        if(_genderSeparately){

                          if(manCount.isEmpty){
                            _manCountError = 'Can`t be empty';
                          }else if(int.tryParse(manCount) == null){
                            _manCountError = 'Invalid format';
                          }

                          if(womanCount.isEmpty){
                            _womanCountError = 'Can`t be empty';
                          }else if(int.tryParse(womanCount) == null){
                            _womanCountError = 'Invalid format';
                          }

                          if(_manCountError == null && _womanCountError == null && (int.parse(manCount) + int.parse(womanCount) < 1 || int.parse(manCount) < 0 || int.parse(womanCount) < 0)){
                            _manCountError = 'Invalid group';
                            _womanCountError = 'Invalid group';
                          }


                        }else{

                          if(peopleCount.isEmpty){
                            _peopleCountError = 'Can`t be empty';
                          }else if(int.tryParse(peopleCount) == null){
                            _peopleCountError = 'Invalid format';
                          }

                          if(_peopleCountError == null && int.parse(peopleCount) < 1){
                            _peopleCountError = 'Invalid group';
                          }
                        }

                        setState(() {});

                        if(_placeLocationError != null){
                          AppToast.instance.showError(context, _placeLocationError!);
                        }

                        if([_eventNameError,
                        _placeNameError,
                        _placeLocationError,
                        _descriptionError,
                        _dateError,
                        _timeStartError,
                        _timeEndError,
                        _drinksEatsError,
                        _peopleCountError,
                        _manCountError,
                        _womanCountError,
                        _termsConditionsError].any((error) => error != null)){
                          return;
                        }

                        final drinksEats = _drinksEatsController.text.trim().isEmpty ? null : _drinksEatsController.text;
                        final termsConditions = _termsConditionsController.text.trim().isEmpty ? null : _termsConditionsController.text;


                        final organiserUid = context.read<ProfileInitializationBloc>().state.user!.uid;
                        final event = Event(eventModel: EventModel(
                          lat: _markers.first.position.latitude,
                            ln: _markers.first.position.longitude,
                            imgPath: widget.eventToUpdate?.eventModel.imgPath,
                            uid: widget.eventToUpdate?.eventModel.uid,
                            createdAt: widget.eventToUpdate?.eventModel.createdAt,
                            prioritizedMusic: EventMusics.fromString(_prioritizedMusic),
                            manCount: !_genderSeparately || manCount.isEmpty ? null : int.parse(manCount),
                            peopleCount: _genderSeparately || peopleCount.isEmpty ? null : int.parse(peopleCount),
                            womanCount: !_genderSeparately || womanCount.isEmpty ? null : int.parse(womanCount),
                            name: eventName, organiserUid: organiserUid, description: description, date: date.date, startTime: timeStart.time, endTime: timeEnd.time, location: placeLocation, placeName: placeName, drinksEats: drinksEats, termsLink: termsConditions, confirmationRequired: _confirmationRequestRequired), friendsUid: []);
                        if(widget.eventToUpdate == null){
                          context.read<UserEventsBloc>().add(UserEventsEvent.createEvent(event: event, imgPath: _photoUrl));
                        }else{
                          context.read<UserEventsBloc>().add(UserEventsEvent.updateEvent(event: event, imgPath: _photoUrl));
                        }
                      }),
                      const SizedBox(height: 40,),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SafeArea(child: BackArrow()),
        ],
      ),
    ),
);
  }

  Future<void> _moveToMarker({required double lat, required double ln}) async{
    await _controller?.moveCamera(CameraUpdate.newLatLng(LatLng(lat, ln)));
  }

  Future<Set<Marker>> _createMarkers({required String input}) async {
    try{
      final addresses = await GeocodingPlatform.instance.locationFromAddress(input);

      return addresses.map((address) {
        final lat = address.latitude;
        final lng = address.longitude;
        return Marker(
          markerId: MarkerId('marker_$lat$lng'),
          position: LatLng(lat, lng),
        );
      }).take(1).toSet();
    }catch(e){
      return {};
    }
  }

  Future<List<String>> _getMarkerLocationAddress({required String input}) async{
    try{
      final places = FlutterGooglePlacesSdk('AIzaSyDTb77groVU7CPa_7HtCF-7OzG_vX5Hgqk', locale: Locale('en'));
      final predictions =
      await places.findAutocompletePredictions(input);
      if(predictions.predictions.isEmpty){
        return [];
      }else{
        final limitedPredictions = predictions.predictions.take(3);
        List<String> placesNames = [];
        for(var place in limitedPredictions){
          placesNames.add((await places.fetchPlace(place.placeId, fields: [PlaceField.Address])).place!.address!);
        }
        return placesNames;
      }
    }catch(e){
      return [];
    }
  }

  Widget _tileWithToggle({required String text, required bool value, required Function(bool) onChanged}){
    return Row(
      children: [
        Expanded(child: Text(text, style: TextStyle(color: KColors.textColor, fontSize: 12),)),
        AppSwitch(width: 30, height: 16, active: value, onChanged: onChanged),
      ],
    );
  }

  Widget _profilePicker({String? imgPath, Event? eventToUpdate, required VoidCallback onTap}){
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
          color: imgPath == null && eventToUpdate == null ?
                   Color(0xFF8B8B8F).withOpacity(0.08)
                 :
                   null,
          image: imgPath == null && eventToUpdate == null ? null :
            imgPath == null && eventToUpdate != null ? DecorationImage(
              fit: BoxFit.cover,
              image: Image.network(eventToUpdate.eventModel.imgPath!).image
          ) : DecorationImage(
                fit: BoxFit.cover,
                image: Image.file(File(imgPath!)).image
            )
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Stack(
          children: [
            if(imgPath == null && eventToUpdate == null)
              Center(
                child: Icon(FontAwesomeIcons.users, color: KColors.lightGrey,),
              )
            else
              SizedBox.shrink(),
            Align(
                alignment: Alignment.bottomRight,
                child: InkWell(
                  onTap: onTap,
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: KColors.secondAccent,
                    child: Icon(FontAwesomeIcons.camera, color: KColors.textColor,),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
