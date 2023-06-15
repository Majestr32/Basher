part of 'purchase_ticket_bloc.dart';

@freezed
class PurchaseTicketEvent with _$PurchaseTicketEvent {
  const factory PurchaseTicketEvent.pay({required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount, required String paymentMethodId}) = _PayEvent;
  const factory PurchaseTicketEvent.payWithGooglePay({required String token, required PurchaseIntent intent, required int amount, required String currency, required String description, required String receiptEmail, required String destinationAccount}) = _PayWithGooglePayEvent;
}
