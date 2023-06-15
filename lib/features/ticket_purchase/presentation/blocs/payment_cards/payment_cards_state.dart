part of 'payment_cards_bloc.dart';

@freezed
class PaymentCardsState with _$PaymentCardsState {
  const PaymentCardsState._();

  List<PaymentMethod> get paymentMethods => maybeMap(
      loaded: (state) => state.paymentMethods,
      addedCard: (state) => state.paymentMethods,
      failCardAdd: (state) => state.paymentMethods,
      orElse: () => []);

  bool get isLoaded => maybeMap(
      loaded: (_) => true,
      orElse: () => false);

  const factory PaymentCardsState.initial() = _InitialState;
  const factory PaymentCardsState.loaded({required List<PaymentMethod> paymentMethods}) = _LoadedState;
  const factory PaymentCardsState.addedCard({required List<PaymentMethod> paymentMethods}) = _AddedCardState;
  const factory PaymentCardsState.removedCard({required List<PaymentMethod> paymentMethods}) = _RemovedCardState;
  const factory PaymentCardsState.failCardAdd({required List<PaymentMethod> paymentMethods}) = _FailCardAddState;
}
