
import 'package:allxclusive/core/enums/tickets_types.dart';
import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/refreshables/refreshables.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/theme/colors.dart';
import 'package:allxclusive/core/widgets/empty_data.dart';
import 'package:allxclusive/core/widgets/header_with_text.dart';
import 'package:allxclusive/features/user_tickets/presentation/blocs/user_tickets_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../shared/data/models/remote/event_model/event_model.dart';


class IndexedTickets extends StatelessWidget {
  const IndexedTickets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserTicketsBloc, UserTicketsState>(
  builder: (context, state) {
    if(state.isLoading){
      return Center(
        child: CircularProgressIndicator(),
      );
    }else if(state.tickets!.isEmpty){
      return RefreshIndicator(
        onRefresh: () => refreshTickets(context),
        child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: _emptyTicket())),
      );
    }
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: RefreshIndicator(
          onRefresh: () => refreshTickets(context),
          child: SingleChildScrollView(
            physics: AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text('Upcoming', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: KColors.textColor),),
                SizedBox(height: 15,),
                ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                    itemCount: state.tickets!.length,
                    shrinkWrap: true,
                    itemBuilder: (context, i){
                  final event = state.tickets![i].event;
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: _userTicket(status: event.eventModel.status, imgPath: event.eventModel.imgPath!, types: state.tickets![i].userTicketModel.ticket.type, title: event.eventModel.name, date: event.eventModel.date, location: event.eventModel.location, onEventTap: (){
                      context.push(RouteNames.eventDetails, extra: event);
                    }, onTicketTap: (){
                      context.push(RouteNames.verifyTicket, extra: state.tickets![i].userTicketModel.qrCode);
                    }),
                  );
                }),
                SizedBox(height: 250,)
              ],
            ),
          ),
        ),
      ),
    );
  },
);
  }

  Widget _emptyTicket(){
    return Column(
      children: [
        HeaderWithText(text: 'Tickets'),
        Expanded(child: EmptyData(icon: FontAwesomeIcons.solidFile, text: 'No events have been found')),
      ],
    );
  }

  Widget _userTicket({required EventStatus status, required TicketsTypes types, required String imgPath, required String title, required DateTime date, required String location, required VoidCallback onEventTap, required VoidCallback onTicketTap}){
    return Container(
      width: double.infinity,
      height: 73,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Color.lerp(Color(0xFF9B9BA4).withOpacity(0.15), KColors.bgColor, 0.85),
          boxShadow: [
            BoxShadow(offset: Offset(3,4), blurRadius: 12, spreadRadius: 4, color: Color(0xFF5E5CE6).withOpacity(0.15), blurStyle: BlurStyle.normal)
          ]
      ),
      child: Stack(
        children: [
          Center(
            child: SizedBox(
              height: 48,
              child: Padding(
                padding: const EdgeInsets.only(left: 14.0, right: 40),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: onEventTap,
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8),
                            image: DecorationImage(
                                image: Image.network(imgPath).image,
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    SizedBox(width: 12,),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(title, overflow: TextOverflow.ellipsis, style: TextStyle(fontWeight: FontWeight.bold, color: KColors.textColor),),
                          Text(date.formatted, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10, color: KColors.lightGrey),),
                          Text(location, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 8, color: KColors.textColor),),
                        ],
                      ),
                    ),
                    SizedBox(width: 50,)
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: onTicketTap,
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 48,
                height: 48,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: KColors.textColor
                ),
                child: Icon(FontAwesomeIcons.ticket, color: types == TicketsTypes.vip ? Color(0xFFA3972F) : KColors.secondAccent,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
