import 'dart:developer';

import 'package:allxclusive/core/error/failure.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/account_balance/account_balance.dart';
import 'package:allxclusive/features/organiser_wallet/domain/entities/organiser_account/organiser_account.dart';
import 'package:allxclusive/features/organiser_wallet/domain/use_cases/get_account_balance.dart';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/payout/payout.dart';
import '../../domain/use_cases/create_organiser_account.dart';
import '../../domain/use_cases/get_account_link.dart';
import '../../domain/use_cases/get_organiser_account.dart';
import '../../domain/use_cases/get_payouts_list.dart';
import '../../domain/use_cases/request_payout.dart';

part 'organiser_wallet_event.dart';
part 'organiser_wallet_state.dart';
part 'organiser_wallet_bloc.freezed.dart';

class OrganiserWalletBloc extends Bloc<OrganiserWalletEvent, OrganiserWalletState> {
  final GetOrganiserAccount _getOrganiserAccountCase;
  final CreateOrganiserAccount _createOrganiserAccountCase;
  final GetPayoutsList _getPayoutsListCase;
  final GetAccountBalance _getAccountBalanceCase;
  final GetAccountLink _getAccountLinkCase;
  final RequestPayout _requestPayoutCase;

  OrganiserWalletBloc(
      {required GetOrganiserAccount getOrganiserAccountCase,
        required CreateOrganiserAccount createOrganiserAccountCase,
        required GetPayoutsList getPayoutsListCase,
        required GetAccountBalance getAccountBalanceCase,
        required GetAccountLink getAccountLinkCase,
        required RequestPayout requestPayoutCase}) :
        _getAccountBalanceCase = getAccountBalanceCase,
        _getOrganiserAccountCase = getOrganiserAccountCase,
        _createOrganiserAccountCase = createOrganiserAccountCase,
        _getPayoutsListCase = getPayoutsListCase,
        _getAccountLinkCase = getAccountLinkCase,
        _requestPayoutCase = requestPayoutCase,
        super(const OrganiserWalletState.initial()) {
    on<OrganiserWalletEvent>(_mapEventToState, transformer: droppable());
  }

  Future<void> _mapEventToState(OrganiserWalletEvent event, Emitter<OrganiserWalletState> emit) => event.map(
      fetchOrganiserWallet: (e) => _fetchOrganiserWallet(e,emit),
      createOrganiserWallet: (e) => _createOrganiserWallet(e,emit),
      fetchPayouts: (e) => _fetchPayouts(e, emit),
      fetchBalance: (e) => _fetchBalance(e, emit),
      generateAccountLink: (e) => _generateAccountLink(e, emit),
      requestPayout: (e) => _requestPayout(e, emit));

  Future<void> _fetchOrganiserWallet(_FetchOrganiserWalletEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrAccount = await _getOrganiserAccountCase.execute(GetOrganiserAccountParams(userUid: event.userUid));
    failureOrAccount.fold((l){
      emit(const OrganiserWalletState.initial());
    }, (r){
      if(r == null){
        emit(const OrganiserWalletState.walletNotCreated());
      }else{
        if(r.accountSetUpProperly){
          emit(OrganiserWalletState.walletInitialized(account: r));
          add(OrganiserWalletEvent.fetchPayouts(accountId: r.id));
        }else{
          emit(OrganiserWalletState.walletNeedsMoreCapabilities(account: r));
        }
      }
    });
  }

  Future<void> _requestPayout(_RequestPayoutEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrPayout = await _requestPayoutCase.execute(RequestPayoutParams(accountId: state.account!.id, amount: event.amount, currency: state.accountBalance!.defaultAvailableBalance.currency));
    failureOrPayout.fold((l){
      final previousState = state;
      emit(OrganiserWalletState.failedToPayout(account: state.account!, error: l, payouts: state.payouts, accountBalance: state.accountBalance!));
      emit(previousState);
    }, (r){
      final availableBalance = state.accountBalance!.defaultAvailableBalance;
      final pendingBalances = state.accountBalance!.pendingBalances;
      final newAvailableBalance = availableBalance.copyWith.call(amount: availableBalance.amount - event.amount / 100);
      final newAvailableBalances = state.accountBalance!.availableBalances.map((e) => e.currency == newAvailableBalance.currency ? newAvailableBalance : e).toList();
      emit(OrganiserWalletState.walletInitialized(account: state.account!, payouts: [r, ...state.payouts], accountBalance: state.accountBalance!.copyWith.call(pendingBalances: pendingBalances, availableBalances: newAvailableBalances)));
    });
  }

  Future<void> _generateAccountLink(_GenerateAccountLinkEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrLink = await _getAccountLinkCase.execute(GetAccountLinkParams(accountId: event.accountId));
    failureOrLink.fold((_){}, (r){
      emit(OrganiserWalletState.generatedAccountLink(account: state.account!, link: r));
      emit(OrganiserWalletState.walletNeedsMoreCapabilities(account: state.account!));
    });
  }

  Future<void> _fetchPayouts(_FetchPayoutsEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrPayouts = await _getPayoutsListCase.execute(GetPayoutsListParams(accountId: event.accountId));
    failureOrPayouts.fold((_){}, (r){
      emit(OrganiserWalletState.walletInitialized(account: state.account!, payouts: r));
    });
    add(OrganiserWalletEvent.fetchBalance(accountId: state.account!.id));
  }

  Future<void> _fetchBalance(_FetchBalanceEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrPayouts = await _getAccountBalanceCase.execute(GetAccountBalanceParams(accountId: event.accountId));
    failureOrPayouts.fold((_){}, (r){
      emit(OrganiserWalletState.walletInitialized(account: state.account!, payouts: state.payouts, accountBalance: r));
    });
  }

  Future<void> _createOrganiserWallet(_CreateOrganiserWalletEvent event, Emitter<OrganiserWalletState> emit) async{
    final failureOrAccount = await _createOrganiserAccountCase.execute(CreateOrganiserAccountParams(userUid: event.userUid, email: event.email));
    failureOrAccount.fold((_){}, (r){
      if(r.accountSetUpProperly){
        emit(OrganiserWalletState.walletInitialized(account: r));
        add(OrganiserWalletEvent.fetchPayouts(accountId: r.id));
      }else{
        emit(OrganiserWalletState.walletNeedsMoreCapabilities(account: r));
      }
    });
  }
}
