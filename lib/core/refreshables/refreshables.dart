import 'dart:async';

import 'package:allxclusive/features/organiser_statistics/presentation/blocs/organiser_statistics/organiser_statistics_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/home/presentation/blocs/home_data_bloc/home_data_bloc.dart';
import '../../features/profile_initialization/presentation/blocs/initialize_user/profile_initialization_bloc.dart';
import '../../features/ticket_purchase/presentation/blocs/join_requests/join_requests_bloc.dart';
import '../../features/user_tickets/presentation/blocs/user_tickets_bloc.dart';

Future<void> refreshJoinRequests(BuildContext context){
  context.read<JoinRequestsBloc>().add(JoinRequestsEvent.fetchJoinRequests(userUid: context.read<ProfileInitializationBloc>().state.user!.uid));
  Completer<void> completer = Completer();
  context.read<JoinRequestsBloc>().stream.listen((event) {
    event.maybeMap(
        loaded: (_){
          completer.complete();
        },
        error: (_){
          completer.complete();
        },
        orElse: (){});
  });
  return completer.future;
}

Future<void> refreshStatistics(BuildContext context){
  context.read<OrganiserStatisticsBloc>().add(OrganiserStatisticsEvent.fetchStatistics(userUid: context.read<ProfileInitializationBloc>().state.user!.uid));
  Completer<void> completer = Completer();
  context.read<OrganiserStatisticsBloc>().stream.listen((event) {
    event.maybeMap(
        loaded: (state){
          if(!completer.isCompleted){
            completer.complete();
          }
        },
        orElse: (){

    });
  });
  return completer.future;
}

Future<void> refreshHome(BuildContext context){
  if(context.read<HomeDataBloc>().state.isFiltered){
    context.read<HomeDataBloc>().add(HomeDataEvent.applyFilters());
  }else{
    context.read<HomeDataBloc>().add(HomeDataEvent.fetchHomeData());
  }
  Completer<void> completer = Completer();
  context.read<HomeDataBloc>().stream.listen((event) {
    event.maybeMap(
        loaded: (_){
          if(!completer.isCompleted){
            completer.complete();
          }
        },
        filtered: (_){
          if(!completer.isCompleted){
            completer.complete();
          }
        },
        error: (_){
          if(!completer.isCompleted){
            completer.complete();
          }
        },
        orElse: (){});
  });
  return completer.future;
}

Future<void> refreshTickets(BuildContext context) async{
  context.read<UserTicketsBloc>().add(UserTicketsEvent.fetchUserTickets(userUid: context.read<ProfileInitializationBloc>().state.user!.uid));
  Completer<void> completer = Completer();
  context.read<UserTicketsBloc>().stream.listen((event) {
    event.maybeMap(
        loaded: (_){
          completer.complete();
        },
        error: (_){
          completer.complete();
        },
        orElse: (){});
  });
  return completer.future;
}