part of 'organiser_wallet_bloc.dart';

@freezed
class OrganiserWalletEvent with _$OrganiserWalletEvent {
  const factory OrganiserWalletEvent.fetchOrganiserWallet({required String userUid}) = _FetchOrganiserWalletEvent;
  const factory OrganiserWalletEvent.createOrganiserWallet({required String userUid, required String email}) = _CreateOrganiserWalletEvent;
  const factory OrganiserWalletEvent.fetchPayouts({required String accountId}) = _FetchPayoutsEvent;
  const factory OrganiserWalletEvent.fetchBalance({required String accountId}) = _FetchBalanceEvent;
  const factory OrganiserWalletEvent.generateAccountLink({required String accountId}) = _GenerateAccountLinkEvent;
  const factory OrganiserWalletEvent.requestPayout({required int amount}) = _RequestPayoutEvent;
}
