import 'package:allxclusive/core/app_icons/app_icons_icons.dart';
import 'package:allxclusive/core/enums/tickets_types.dart';
import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/event_status_widget.dart';
import 'package:allxclusive/core/widgets/shimmer_image.dart';
import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:allxclusive/features/events/domain/use_cases/get_event_details.dart';
import 'package:allxclusive/features/home/presentation/blocs/home_data_bloc/home_data_bloc.dart';
import 'package:allxclusive/features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/join_request/join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/repositories/ticket_purchase_repository_contract.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/get_user_to_event_metadata.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/send_join_request.dart';
import 'package:allxclusive/features/ticket_purchase/domain/use_cases/track_request.dart';
import 'package:allxclusive/features/ticket_purchase/presentation/blocs/suggest_friends/suggest_friends_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../core/widgets/user_photo.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';
import '../blocs/event_details/event_details_bloc.dart';

class EventDetailsScreen extends StatefulWidget {
  final Event event;
  const EventDetailsScreen({Key? key, required this.event}) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class TicketShapePainter extends CustomPainter {
  final Color color;

  @override
  void paint(Canvas canvas, Size size) {
    final Paint paint = Paint()
      ..color = color;

    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    path.cubicTo(size.width, size.height, size.width * 0.98, size.height * 0.8, size.width, size.height * 0.6);
    path.cubicTo(size.width, size.height, size.width, size.height * 0.5, size.width, size.height * 0.5);
    path.cubicTo(size.width, size.height * 0.5, size.width * 0.97, size.height * 0.21, size.width, 0);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  const TicketShapePainter({
    required this.color,
  });
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  late final EventDetailsBloc _eventDetailsBloc = EventDetailsBloc(
      trackRequestCase: TrackRequest(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      getUserToEventMetadataCase: GetUserToEventMetadata(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      sendJoinRequestCase: SendJoinRequest(
        ticketPurchaseRepository: context.read<TicketPurchaseRepository>()
      ),
      userUid: context.read<ProfileInitializationBloc>().state.user!.uid,
      getEventDetailsCase: GetEventDetails(eventRepository: context.read<EventRepository>()),
      event: widget.event);

  @override
  void initState() {
    super.initState();
    _eventDetailsBloc.add(EventDetailsEvent.loadDetails(event: widget.event));
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EventDetailsBloc, EventDetailsState>(
        bloc: _eventDetailsBloc,
    builder: (context, state) {
      if(!state.isLoaded){
        return Scaffold(
          backgroundColor: KColors.bgColor,
          body: const Center(
            child: CircularProgressIndicator(),
          ),
        );
      }else if(state.isError){
        return Scaffold(
          backgroundColor: KColors.bgColor,
          body: Stack(
            children: [
              Center(
                child: Text('Event failed to load or has been deleted', style: TextStyle(fontSize: 18, color: KColors.textColor),)
              ),
              SafeArea(child: BackArrow())
            ],
          ),
        );
      }
      final friendsAttending = context.read<SuggestFriendsBloc>().state.getFriendsFromUid(_eventDetailsBloc.state.eventDetails!.event.friendsUid);
      return Scaffold(
        backgroundColor: KColors.bgColor,
        body: SafeArea(
          child: Stack(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        width: double.infinity,
                        child: AspectRatio(aspectRatio: 4/3,
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: ShimmerImage(url: state.eventDetails!.event.eventModel.imgPath!,))),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(state.eventDetails!.event.eventModel.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: KColors.textColor),),
                          const SizedBox(height: 7,),
                          EventStatusWidget(status: state.eventDetails!.event.eventModel.status,),
                          const SizedBox(height: 13,),
                          Text(state.eventDetails!.event.eventModel.description, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: KColors.textColor),),
                          const SizedBox(height: 15,),
                          _locationPart(
                              markerPos: LatLng(state.eventDetails!.event.eventModel.lat!, state.eventDetails!.event.eventModel.ln!),
                              locationName: state.eventDetails!.event.eventModel.location, placeName: state.eventDetails!.event.eventModel.placeName),
                          const SizedBox(height: 15,),
                          _datePart(startDate: state.eventDetails!.event.eventModel.date, startTime: state.eventDetails!.event.eventModel.startTime, endDate: state.eventDetails!.event.eventModel.date, endTime: state.eventDetails!.event.eventModel.endTime),
                          const SizedBox(height: 21,),
                          _ticketsPart(tickets: state.eventDetails!.tickets),
                          widget.event.eventModel.status == EventStatus.published ? const SizedBox.shrink() : Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            child: _addTicket(() {
                              if(_eventDetailsBloc.state.eventDetails!.leftToDistribute == 0){
                                AppToast.instance.showError(context, 'All tickets are set, you can`t change that now');
                              }else{
                                context.push(RouteNames.createTicket, extra: _eventDetailsBloc);
                              }
                            }),
                          ),
                          const SizedBox(height: 40,),
                          state.eventDetails!.tickets.isEmpty ? SizedBox.shrink() :
                          (state.metadata?.bought ?? false) || state.eventDetails!.totalBought >= state.eventDetails!.event.eventModel.totalMembers ? const SizedBox.shrink() : AppButton(
                            bgColor: KColors.mainAccent,
                            text: 'BUY',
                            onPressed: (){
                              context.push(RouteNames.purchaseEventTicket, extra: state.eventDetails);
                            },
                          ),
                          const SizedBox(height: 50,),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              Align(
                  alignment: Alignment.topLeft,
                  child: BackArrow(
                    inverseColor: true,
                    fillColor: Color(0xFF4D4D4D).withOpacity(0.4),
                    padding: EdgeInsets.symmetric(horizontal: 36, vertical: 36),
                  )),
            ],
          ),
        ),
      );
    },
);
  }
  
  Widget _ticketsPart({required List<Ticket> tickets}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Tickets (${tickets.length})', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.textColor),),
        ...tickets.map((e) => Container(
            margin: EdgeInsets.symmetric(vertical: 12),
            child: _ticket(type: e.type, maxTickets: e.fixedQuantity, purchasedTicket: e.bought, price: e.priceWithCurrency))).toList(),
      ],
    );
  }

  Widget _ticket({required TicketsTypes type, required int maxTickets, required int purchasedTicket, required String price}){
    return CustomPaint(
      painter: TicketShapePainter(color: type.color),
      child: SizedBox(
        height: 76,
        width: double.infinity,
        child: Row(
          children: [
            SizedBox(width: 17,),
            Icon(FontAwesomeIcons.ticket, color: KColors.white, size: 36,),
            SizedBox(width: 15,),
            Text(type.name, style: TextStyle(color: KColors.white, fontSize: 14),),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(FontAwesomeIcons.users, color: KColors.white, size: 14,),
                    SizedBox(width: 10,),
                    Text('$purchasedTicket / $maxTickets', style: TextStyle(color: KColors.white, fontSize: 14),),
                  ],
                ),
                SizedBox(height: 2,),
                Row(
                  children: [
                    Icon(FontAwesomeIcons.moneyBill, color: KColors.white, size: 14,),
                    SizedBox(width: 10,),
                    Text(price, style: TextStyle(color: KColors.white, fontSize: 14),),
                  ],
                )
              ],
            ),
            SizedBox(width: 32,)
          ],
        ),
      ),
    );
  }

  Widget _datePart({required DateTime startDate, required DateTime startTime, required DateTime endDate, required DateTime endTime,}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Date', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),),
        SizedBox(height: 9,),
        Row(
          children: [
            Icon(FontAwesomeIcons.solidCalendar, color: KColors.mainAccent, size: 18,),
            SizedBox(width: 15,),
            Text("${startDate.formattedTexted} | ${startTime.hour.toString().padLeft(2, '0')}:${startTime.minute.toString().padLeft(2, '0')}", style: TextStyle(color: KColors.textColor),),
            Spacer(),
            Text("Start", style: TextStyle(color: KColors.textColor),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(FontAwesomeIcons.solidCalendar, color: KColors.mainAccent, size: 18,),
            SizedBox(width: 15,),
            Text("${endDate.formattedTexted} | ${endTime.hour.toString().padLeft(2, '0')}:${endTime.minute.toString().padLeft(2, '0')}", style: TextStyle(color: KColors.textColor),),
            Spacer(),
            Text("End", style: TextStyle(color: KColors.textColor),),
          ],
        ),
        SizedBox(height: 10,),
        Row(
          children: [
            Icon(FontAwesomeIcons.solidClock, color: KColors.mainAccent, size: 18,),
            SizedBox(width: 15,),
            Text("${endTime.difference(startTime).inHours} hours ${endTime.difference(startTime).inMinutes - endTime.difference(startTime).inHours * 60} minutes", style: TextStyle(color: KColors.textColor),),
          ],
        ),
      ],
    );
  }

  Widget _locationPart({required String placeName, required String locationName, required LatLng markerPos}){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('Maps | ', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: KColors.textColor),),
            GestureDetector(
                onTap: (){
                  MapsLauncher.launchQuery(locationName);
                },
                child: Text(locationName, style: TextStyle(fontSize: 14, color: KColors.mainAccent),)),
          ],
        ),
        SizedBox(height: 12,),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: SizedBox(
              width: double.infinity,
              height: 213,
              child: GoogleMap(
                  myLocationEnabled: false,
                  myLocationButtonEnabled: false,
                  markers: {Marker(markerId: MarkerId(markerPos.toString()), position: markerPos), },
                  initialCameraPosition: CameraPosition(target: markerPos, zoom: 4))),
        ),
        SizedBox(height: 8,),
        Row(
          children: [
            Text('Settled in: ', style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w600),),
            Text(placeName, style: TextStyle(color: KColors.textColor, fontWeight: FontWeight.w700),),
          ],
        )
      ],
    );
  }

  Widget _addTicket(VoidCallback onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 132,
        height: 33,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: KColors.mainAccent
        ),
        child: Center(child: Text('+ Tickets', style: TextStyle(color: KColors.textColor),)),
      ),
    );
  }

  Widget _membersWidget({int? manCount, int? womanCount, int? peopleCount, int? manBought, int? womanBought, int? peopleBought}){
    if(peopleCount != null){
      return Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF222222),
                borderRadius: BorderRadius.circular(16)
            ),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 10),
                    child: Center(child: Text('$peopleBought/$peopleCount', style: TextStyle(color: KColors.textColor, fontSize: 14, fontWeight: FontWeight.w600),))),
                Positioned(
                    top: 10,
                    left: 10,
                    child: Icon(FontAwesomeIcons.users, color: KColors.mainAccent, size: 20,)),
              ],
            ),
          ),
        ],
      );
    }else{
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: const Color(0xFF222222),
              borderRadius: BorderRadius.circular(16)
            ),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                    child: Center(child: Text('$manBought/$manCount', style: TextStyle(color: KColors.textColor, fontSize: 14, fontWeight: FontWeight.w600),))),
                Positioned(
                    left: 0,
                    top: 10,
                    child: Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Icon(AppIcons.man, color: KColors.mainAccent, size: 20,))),
              ],
            ),
          ),
          const SizedBox(width: 15,),
          Container(
            decoration: BoxDecoration(
                color: const Color(0xFF222222),
                borderRadius: BorderRadius.circular(16)
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Center(child: Text('$womanBought/$womanCount', style: TextStyle(color: KColors.textColor, fontSize: 14, fontWeight: FontWeight.w600),)),
                ),
                Positioned(
                  left: 0,
                  top: 10,
                  child: Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Icon(AppIcons.woman, color: KColors.secondAccent, size: 20,)),
                ),
              ],
            ),
          ),
        ],
      );
    }
  }
}
