import 'package:allxclusive/core/extensions/date.dart';
import 'package:allxclusive/core/router/router.dart';
import 'package:allxclusive/core/widgets/event_status_widget.dart';
import 'package:allxclusive/core/widgets/event_tile.dart';
import 'package:allxclusive/features/events/presentation/blocs/user_events/user_events_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theme/colors.dart';
import '../../../../core/widgets/back_button.dart';
import '../../../../shared/domain/entities/event/event.dart';

class OrganiserEventsScreen extends StatelessWidget {
  const OrganiserEventsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KColors.bgColor,
      floatingActionButton: FloatingActionButton(
        splashColor: KColors.lightGrey,
        backgroundColor: Color(0xFFD9D9D9),
        child: Center(
          child: Icon(FontAwesomeIcons.plus, color: KColors.mainAccent,),
        ),
        onPressed: (){
          context.push(RouteNames.createEvent);
        },
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            BackArrow(),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Text('Your events', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: KColors.textColor),),
            ),
            SizedBox(height: 30,),
            BlocBuilder<UserEventsBloc, UserEventsState>(
  builder: (context, state) {
    return ListView.builder(
      shrinkWrap: true,
        padding: EdgeInsets.symmetric(horizontal: 24),
        itemCount: state.events.length,
        itemBuilder: (context,i){
              return Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: EventTile(title: state.events[i].eventModel.name,
                    status: state.events[i].eventModel.status,
                    onTap: (){
                  context.push(RouteNames.organiserEventDetails, extra: state.events[i]);
                }, imgPath: state.events[i].eventModel.imgPath!, date: state.events[i].eventModel.date, location: state.events[i].eventModel.location),
              );
            });
  },
),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }


}
