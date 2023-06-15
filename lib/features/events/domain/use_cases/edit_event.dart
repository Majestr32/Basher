

import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../shared/domain/entities/event/event.dart';
import '../repositories/event_repository_contract.dart';

class EditEvent implements UseCase<Event,EditEventParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure,Event>> execute(EditEventParams params) {
    return eventRepository.editEvent(event: params.event, imgPath: params.imgPath);
  }

  const EditEvent({
    required this.eventRepository,
  });
}

class EditEventParams{
  final String? imgPath;
  final EventModel event;
  EditEventParams({required this.event, this.imgPath});
}