import 'package:allxclusive/core/app_icons/app_icons_icons.dart';
import 'package:allxclusive/core/enums/tickets_types.dart';
import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/utills/toasts.dart';
import 'package:allxclusive/core/widgets/back_button.dart';
import 'package:allxclusive/core/widgets/event_status_widget.dart';
import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:allxclusive/features/events/domain/use_cases/get_event_details.dart';
import 'package:allxclusive/features/events/domain/use_cases/remove_all_tickets.dart';
import 'package:allxclusive/features/events/domain/use_cases/remove_ticket.dart';
import 'package:allxclusive/features/events/presentation/blocs/event_details/event_details_bloc.dart';
import 'package:allxclusive/features/events/presentation/blocs/user_events/user_events_bloc.dart';
import 'package:confirm_dialog/confirm_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:maps_launcher/maps_launcher.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/widgets/app_button.dart';
import '../../../../shared/data/models/remote/event_model/event_model.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';

class EventDetailsScreen extends StatefulWidget {
  final Event event;
  const EventDetailsScreen({Key? key, required this.event}) : super(key: key);

  @override
  State<EventDetailsScreen> createState() => _EventDetailsScreenState();
}

class _EventDetailsScreenState extends State<EventDetailsScreen> {
  late final EventDetailsBloc _eventDetailsBloc = EventDetailsBloc(getEventDetailsCase: GetEventDetails(eventRepository: context.read<EventRepository>()),
      removeAllTicketsCase: RemoveAllTickets(eventRepository: context.read<EventRepository>()),
      removeTicketCase: RemoveTicket(eventRepository: context.read<EventRepository>()),
      userEventsBloc: context.read<UserEventsBloc>(),
      event: widget.event);

  @override
  void initState() {
    super.initState();
    _eventDetailsBloc.add(EventDetailsEvent.loadDetails(event: widget.event));
  }
  
  @override
  Widget build(BuildContext context) {
    return BlocListener<UserEventsBloc, UserEventsState>(
  listener: (context, state) {
    state.maybeMap(
        publishedEvent: (_){
          AppToast.instance.showSuccess(context, 'Published event!');
          Navigator.of(context).pop();
        },
        deletedEvent: (_){
          AppToast.instance.showSuccess(context, 'Removed event!');
          Navigator.of(context).pop();
        },
        orElse: (){});
  },
  child: BlocBuilder<EventDetailsBloc, EventDetailsState>(
      bloc: _eventDetailsBloc,
  builder: (context, state) {
    if(!state.isLoaded){
      return Scaffold(
        backgroundColor: KColors.bgColor,
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }
    return Scaffold(
      backgroundColor: KColors.bgColor,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  child: AspectRatio(aspectRatio: 4/3,
                  child: Image.network(state.eventDetails!.event.eventModel.imgPath!, fit: BoxFit.cover,),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 15,),
                      Text(state.eventDetails!.event.eventModel.name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: KColors.textColor),),
                      EventStatusWidget(status: state.eventDetails!.event.eventModel.status,),
                      SizedBox(height: 5,),
                      Text(state.eventDetails!.event.eventModel.description, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: KColors.textColor),),
                      SizedBox(height: 15,),
                      _iconTextTile(icon: FontAwesomeIcons.calendar, text: '${state.eventDetails!.event.eventModel.date.formattedTexted}\n(${state.eventDetails!.event.eventModel.startTime.formattedTime}-${state.eventDetails!.event.eventModel.endTime.formattedTime})'),
                      SizedBox(height: 15,),
                      _iconTextTile(icon: FontAwesomeIcons.locationArrow, text: state.eventDetails!.event.eventModel.location, isLink: true, onTap: (){
                        MapsLauncher.launchQuery(state.eventDetails!.event.eventModel.location);
                      }),
                      SizedBox(height: 15,),
                      _iconTextTile(icon: FontAwesomeIcons.building, text: state.eventDetails!.event.eventModel.placeName),
                      SizedBox(height: 20,),
                      Text('Tickets (${state.eventDetails!.tickets.length})', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: KColors.darkGrey),),
                      SizedBox(height: 10,),
                      ((){
                        final orderedTickets = state.eventDetails!.tickets..sort((a,b) => a.type.index.compareTo(b.type.index));
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: List.generate(orderedTickets.length, (index){
                            return Container(
                                margin: EdgeInsets.symmetric(vertical: 10),
                                child: _ticketTile(ticket: orderedTickets[index],
                                    status: widget.event.eventModel.status,
                                    onTap: (){
                                  _eventDetailsBloc.add(EventDetailsEvent.removeTicket(ticket: orderedTickets[index]));
                                }));
                          }),
                        );
                      }()),
                      SizedBox(height: 10,),
                      widget.event.eventModel.status == EventStatus.published ? SizedBox.shrink() : Container(
                        margin: EdgeInsets.only(bottom: 15),
                        child: _addTicket(() {
                          if(_eventDetailsBloc.state.eventDetails!.leftToDistribute == 0){
                            AppToast.instance.showError(context, 'All tickets are set, you can`t change that now');
                          }else{
                            context.push(RouteNames.createTicket, extra: _eventDetailsBloc);
                          }
                        }),
                      ),
                      state.eventDetails!.event.eventModel.drinksEats == null ? SizedBox.shrink() : Text('Drinks Package', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: KColors.darkGrey),),
                      state.eventDetails!.event.eventModel.drinksEats == null ? SizedBox.shrink() : Text(state.eventDetails!.event.eventModel.drinksEats!, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: KColors.textColor),),
                      state.eventDetails!.event.eventModel.drinksEats == null ? SizedBox.shrink() : SizedBox(height: 15,),
                      state.eventDetails!.event.eventModel.termsLink == null ? SizedBox.shrink() : Text('Terms & conditions', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: KColors.darkGrey),),
                      state.eventDetails!.event.eventModel.termsLink == null ? SizedBox.shrink() : GestureDetector(
                          onTap: () async{
                            if(await canLaunchUrl(Uri.parse(state.eventDetails!.event.eventModel.termsLink!))){
                              await launchUrl(Uri.parse(state.eventDetails!.event.eventModel.termsLink!));
                            }else{
                              AppToast.instance.showError(context, 'Link is not valid');
                            }
                          },
                          child: Text(state.eventDetails!.event.eventModel.termsLink!, style: TextStyle(fontWeight: FontWeight.w300, fontSize: 14, color: KColors.mainAccent),)),
                      SizedBox(height: 10,),
                      Text('People attending this event', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: KColors.darkGrey),),
                      SizedBox(height: 8,),
                      _membersWidget(peopleCount: state.eventDetails!.event.eventModel.peopleCount, manCount: state.eventDetails!.event.eventModel.manCount, womanCount: state.eventDetails!.event.eventModel.womanCount),
                      SizedBox(height: 30,),
                      AppButton(
                        text: 'DELETE EVENT',
                        bgColor: KColors.errorColor,
                        onPressed: () async{
                          String content = 'Deletion of your account will remove all of your information collected within your profile, any events made by you will be removed and any funds you have stored in your wallet will be lost.';
                          bool confirmed = await confirm(context,
                              title: Text('Are you sure you want to delete your account?', style: TextStyle(color: KColors.textColor),), content: Text(content, style: TextStyle(color: KColors.textColor),));
                          if(!mounted){
                            return;
                          }
                          if(confirmed){
                            context.read<UserEventsBloc>().add(UserEventsEvent.deleteEvent(eventUid: widget.event.eventModel.uid!));
                          }
                        },
                      ),
                      SizedBox(height: 20,),
                      widget.event.eventModel.status == EventStatus.published ? const SizedBox.shrink() : AppButton(
                        text: 'EDIT EVENT',
                        onPressed: (){
                          context.push(RouteNames.createEvent, extra: state.eventDetails!.event);
                        },
                      ),
                      SizedBox(height: 20,),
                      widget.event.eventModel.status == EventStatus.published ? const SizedBox.shrink() : AppButton(
                        bgColor: KColors.mainAccent,
                        text: 'PUBLISH',
                        onPressed: (){
                          context.read<UserEventsBloc>().add(UserEventsEvent.publishEvent(event: widget.event));
                        },
                      ),
                      SizedBox(height: 50,),
                    ],
                  ),
                ),

              ],
            ),
          ),
          SafeArea(child: BackArrow()),
        ],
      ),
    );
  },
),
);
  }

  Widget _ticketTile({required Ticket ticket, required EventStatus status, required VoidCallback onTap}){
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(FontAwesomeIcons.ticket, color: ticket.type == TicketsTypes.vip ? Color(0xFFA3972F) : KColors.secondAccent, size: 30,),
                  SizedBox(width: 15,),
                  Text('0/${ticket.fixedQuantity}', style: TextStyle(fontSize: 14, color: KColors.lightGrey),),
                  Spacer(),
                  Text(ticket.type.name, style: TextStyle(fontSize: 14, color: KColors.lightGrey, fontWeight: FontWeight.bold),),
                ],
              ),
              SizedBox(height: 5,),
              Text(ticket.description, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300, color: KColors.textColor),),
              SizedBox(height: 5,),
              Text(ticket.priceWithCurrency, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: KColors.textColor),),
            ],
          ),
        ),
        widget.event.eventModel.status == EventStatus.published ? SizedBox.shrink() : SizedBox(width: 24,),
        widget.event.eventModel.status == EventStatus.published ? SizedBox.shrink() : InkWell(
          onTap: onTap,
          child: Container(
            width: 46,
            height: 46,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: KColors.textColor,
            ),
            child: Icon(FontAwesomeIcons.trash, color: KColors.errorColor,),
          ),
        ),
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

  Widget _membersWidget({int? manCount, int? womanCount, int? peopleCount}){
    if(peopleCount != null){
      return Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(FontAwesomeIcons.users, color: KColors.mainAccent, size: 16,),
          SizedBox(width: 15,),
          Text('0/$peopleCount', style: TextStyle(color: Color(0xFF9B9BA4), fontSize: 14, fontWeight: FontWeight.w400),)
        ],
      );
    }else{
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(AppIcons.man, color: KColors.mainAccent, size: 16,),
              SizedBox(width: 15,),
              Text('0/$manCount', style: TextStyle(color: Color(0xFF9B9BA4), fontSize: 14, fontWeight: FontWeight.w400),)
            ],
          ),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(AppIcons.woman, color: KColors.secondAccent, size: 16),
              SizedBox(width: 15,),
              Text('0/$womanCount', style: TextStyle(color: Color(0xFF9B9BA4), fontSize: 14, fontWeight: FontWeight.w400),)
            ],
          ),
        ],
      );
    }
  }

  Widget _iconTextTile({required IconData icon, required String text, VoidCallback? onTap, bool isLink = false}){
    return Row(
      children: [
        Icon(icon, color: KColors.lightGrey, size: 22,),
        SizedBox(width: 12,),
        GestureDetector(
            onTap: onTap,
            child: Text(text, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: isLink ? KColors.mainAccent : Color(0xFF9B9BA4)),))
      ],
    );
  }
}
