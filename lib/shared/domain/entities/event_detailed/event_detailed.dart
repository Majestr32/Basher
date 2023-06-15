

import '../../../../../shared/domain/entities/event/event.dart';
import '../../../../../shared/domain/entities/ticket/ticket.dart';

class EventDetailed{
  final Event event;
  final List<Ticket> tickets;
  final int? peopleBought;
  final int? manBought;
  final int? womanBought;
  final String? accountId;

  int get totalBought => peopleBought == null ? manBought! + womanBought! : peopleBought!;

  int get distributed => tickets.fold(0, (previousValue, element) => previousValue + element.fixedQuantity);
  int get leftToDistribute => event.eventModel!.totalMembers - distributed;

  const EventDetailed({
    required this.event,
    required this.tickets,
    this.peopleBought,
    this.manBought,
    this.womanBought,
    this.accountId
  });
}