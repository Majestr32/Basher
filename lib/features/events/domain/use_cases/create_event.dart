

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/core/usecases/usecase.dart';
import 'package:allxclusive/core/usecases/void_use_case.dart';
import 'package:allxclusive/shared/data/models/remote/event_model/event_model.dart';
import 'package:dartz/dartz.dart';

import '../../../../shared/domain/entities/event/event.dart';
import '../repositories/event_repository_contract.dart';

class CreateEvent implements UseCase<Event,CreateEventParams>{
  final EventRepository eventRepository;

  @override
  Future<Either<Failure,Event>> execute(CreateEventParams params) {
    return eventRepository.createEvent(event: params.event, imgPath: params.imgPath);
  }

  const CreateEvent({
    required this.eventRepository,
  });
}

class CreateEventParams{
  final String? imgPath;
  final EventModel event;
  CreateEventParams({required this.event, this.imgPath});
}