part of 'payment_cards_bloc.dart';

@freezed
class PaymentCardsEvent with _$PaymentCardsEvent {
  const factory PaymentCardsEvent.fetchCards({required String email}) = _FetchCardsEvent;
  const factory PaymentCardsEvent.addCard({required String email, required String holderName, required String card, required String expMonth, required String expYear, required String cvc}) = _AddCardEvent;
  const factory PaymentCardsEvent.removeCard({required String paymentMethodId}) = _RemoveCardEvent;
}
