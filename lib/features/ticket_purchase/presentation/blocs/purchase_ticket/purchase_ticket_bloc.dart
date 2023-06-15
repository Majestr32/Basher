import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/ticket_purchase/domain/entities/purchase_intent/purchase_intent.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/use_cases/purchase_ticket.dart';
import '../../../domain/use_cases/purchase_ticket_with_google_pay.dart';

part 'purchase_ticket_event.dart';
part 'purchase_ticket_state.dart';
part 'purchase_ticket_bloc.freezed.dart';

class PurchaseTicketBloc extends Bloc<PurchaseTicketEvent, PurchaseTicketState> {
  final PurchaseTicket _purchaseTicketCase;
  final PurchaseTicketWithGooglePay _purchaseTicketWithGooglePayCase;
  PurchaseTicketBloc({
    required PurchaseTicket purchaseTicketCase,
    required PurchaseTicketWithGooglePay purchaseTicketWithGooglePayCase
  }) : _purchaseTicketCase = purchaseTicketCase,
        _purchaseTicketWithGooglePayCase = purchaseTicketWithGooglePayCase,
        super(const PurchaseTicketState.initial()) {
    on<PurchaseTicketEvent>(_mapPurchaseTicketToState);
  }

  Future<void> _mapPurchaseTicketToState(PurchaseTicketEvent event, Emitter<PurchaseTicketState> emit) => event.map(
    pay: (e) => _pay(e, emit),
    payWithGooglePay: (e) => _payWithGooglePay(e, emit)
  );

  Future<void> _pay(_PayEvent event, Emitter<PurchaseTicketState> emit) async{
    emit(const PurchaseTicketState.paying());
    final failureOrPay = await _purchaseTicketCase.execute(PurchaseTicketParams(
        intent: event.intent, paymentMethodId: event.paymentMethodId, amount: event.amount,
    currency: event.currency, description: event.description, destinationAccount: event.destinationAccount, receiptEmail: event.receiptEmail));
    failureOrPay.fold((l){
      emit(PurchaseTicketState.error(failure: l));
    }, (_){
      emit(const PurchaseTicketState.success());
    });
  }

  Future<void> _payWithGooglePay(_PayWithGooglePayEvent event, Emitter<PurchaseTicketState> emit) async{
    emit(const PurchaseTicketState.paying());
    final failureOrPay = await _purchaseTicketWithGooglePayCase.execute(PurchaseTicketWithGooglePayParams(token: event.token, intent: event.intent, amount: event.amount, currency: event.currency, description: event.description, receiptEmail: event.receiptEmail, destinationAccount: event.destinationAccount));
    failureOrPay.fold((l){
      emit(PurchaseTicketState.error(failure: l));
    }, (_){
      emit(const PurchaseTicketState.success());
    });
  }
}
