part of 'user_tickets_bloc.dart';

@freezed
class UserTicketsState with _$UserTicketsState {
  const UserTicketsState._();

  List<UserTicket>? get tickets => maybeMap(
      loaded: (state) => state.tickets,
      loading: (state) => state.tickets,
      orElse: () => null);

  bool get isLoading => maybeMap(
      initial: (_) => true,
      orElse: () => false);

  const factory UserTicketsState.initial() = _InitialState;
  const factory UserTicketsState.loaded({required List<UserTicket> tickets}) = _LoadedState;
  const factory UserTicketsState.loading({required List<UserTicket> tickets}) = _LoadingState;
  const factory UserTicketsState.error({required Failure failure}) = _ErrorState;
}
