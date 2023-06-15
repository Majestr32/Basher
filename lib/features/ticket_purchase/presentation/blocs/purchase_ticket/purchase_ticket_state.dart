part of 'purchase_ticket_bloc.dart';

@freezed
class PurchaseTicketState with _$PurchaseTicketState {
  const PurchaseTicketState._();

  bool get isLoading => maybeMap(
      paying: (_) => true,
      orElse: () => false);

  bool get isPaying => maybeMap(
      paying: (state) => state.isPaying,
      orElse: () => false);

  const factory PurchaseTicketState.initial() = _InitialState;
  const factory PurchaseTicketState.paying() = _PayingState;
  const factory PurchaseTicketState.success() = _SuccessState;
  const factory PurchaseTicketState.error({required Failure failure}) = _ErrorState;
}
