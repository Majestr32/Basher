import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:allxclusive/shared/domain/entities/event_detailed/event_detailed.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/event/event.dart';
import '../../../../shared/domain/entities/ticket/ticket.dart';

abstract class EventRepository{
  Future<Either<Failure, List<Event>>> getOrganiserEvents({required String organiserUid});
  Future<Either<Failure, EventDetailed>> getEventDetails({required Event event});
  Future<Either<Failure, Event>> createEvent({required EventModel event, String? imgPath});
  Future<Either<Failure, Event>> editEvent({required EventModel event, String? imgPath});
  Future<Either<Failure, Ticket>> createTicket({required Ticket ticket, required String eventUid});
  Future<Either<Failure, Ticket>> removeTicket({required Ticket ticket, required String eventUid});
  Future<Either<Failure,Event>> publishEvent({required Event event});
  Future<Failure?> deleteEvent({required String eventUid});
  Future<Failure?> removeAllTickets({required String eventUid});
}