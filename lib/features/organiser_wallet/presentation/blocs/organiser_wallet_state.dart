part of 'organiser_wallet_bloc.dart';

@freezed
class OrganiserWalletState with _$OrganiserWalletState {
  const OrganiserWalletState._();

  OrganiserAccount? get account => maybeMap(
      walletInitialized: (state) => state.account,
      walletNeedsMoreCapabilities: (state) => state.account,
      generatedAccountLink: (state) => state.account,
      failedToPayout: (state) => state.account,
      orElse: () => null);

  List<Payout> get payouts => maybeMap(
      walletInitialized: (state) => state.payouts,
      failedToPayout: (state) => state.payouts,
      orElse: () => []);

  AccountBalance? get accountBalance => maybeMap(
      walletInitialized: (state) => state.accountBalance,
      failedToPayout: (state) => state.accountBalance,
      orElse: () => null);

  bool get walletInitialized => maybeMap(
      walletInitialized: (_) => true,
      orElse: () => false);

  const factory OrganiserWalletState.initial() = _InitialState;
  const factory OrganiserWalletState.walletNotCreated() = _WalletNotCreatedState;
  const factory OrganiserWalletState.walletNeedsMoreCapabilities({required OrganiserAccount account}) = _WalletNeedsMoreCapabilitiesState;
  const factory OrganiserWalletState.generatedAccountLink({required OrganiserAccount account, required String link}) = _GeneratedAccountLinkState;
  const factory OrganiserWalletState.walletInitialized({required OrganiserAccount account, @Default([]) List<Payout> payouts, @Default(AccountBalance(pendingBalances: [], availableBalances: [])) AccountBalance accountBalance}) = _WalletInitializedState;
  const factory OrganiserWalletState.failedToPayout({required OrganiserAccount account, @Default([]) List<Payout> payouts, @Default(AccountBalance(pendingBalances: [], availableBalances: [])) AccountBalance accountBalance, required Failure error}) = _FailedToPayoutState;
}
