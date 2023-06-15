import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/events/data/data_sources/remote/event_service_contract.dart';
import 'package:allxclusive/features/events/domain/repositories/event_repository_contract.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/event/event.dart';
import '../../../../shared/domain/entities/event_detailed/event_detailed.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';

class EventRepositoryImpl implements EventRepository{
  final EventService _eventService;

  const EventRepositoryImpl({
    required EventService eventService,
  }) : _eventService = eventService;

  @override
  Future<Either<Failure, Event>> createEvent({required EventModel event, String? imgPath}) async{
    try{
      final result = await _eventService.createEvent(event: event, imgPath: imgPath);
      return Right(result);
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, List<Event>>> getOrganiserEvents({required String organiserUid}) async{
    try{
      return Right(await _eventService.getOrganiserEvents(organiserUid: organiserUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Ticket>> createTicket({required Ticket ticket, required String eventUid}) async{
    try{
      return Right(await _eventService.createTicket(ticket: ticket, eventUid: eventUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, EventDetailed>> getEventDetails({required Event event}) async{
    try{
      return Right(await _eventService.getEventDetails(event: event));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Event>> editEvent({required EventModel event, String? imgPath}) async{
    try{
      return Right(await _eventService.editEvent(event: event, imgPath: imgPath));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure, Ticket>> removeTicket({required Ticket ticket, required String eventUid}) async{
    try{
      return Right(await _eventService.removeTicket(ticket: ticket, eventUid: eventUid));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Either<Failure,Event>> publishEvent({required Event event}) async{
    try{
      return Right(await _eventService.publishEvent(event: event));
    }on Failure catch(e){
      return Left(e);
    }
  }

  @override
  Future<Failure?> removeAllTickets({required String eventUid}) async{
    try{
      await _eventService.removeAllTickets(eventUid: eventUid);
      return null;
    }on Failure catch(e){
      return e;
    }
  }

  @override
  Future<Failure?> deleteEvent({required String eventUid}) async{
    try{
      await _eventService.deleteEvent(eventUid: eventUid);
      return null;
    }on Failure catch(e){
      return e;
    }
  }
}