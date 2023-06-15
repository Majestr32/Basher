import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/payment_method/payment_method.dart';
import '../../../domain/use_cases/add_payment_method_to_customer.dart';
import '../../../domain/use_cases/detach_payment_method.dart';
import '../../../domain/use_cases/get_user_payment_methods.dart';

part 'payment_cards_event.dart';
part 'payment_cards_state.dart';
part 'payment_cards_bloc.freezed.dart';

class PaymentCardsBloc extends Bloc<PaymentCardsEvent, PaymentCardsState> {
  final GetUserPaymentMethods _getUserPaymentMethodsCase;
  final DetachPaymentMethod _detachPaymentMethodCase;
  final AddPaymentMethodToCustomer _addPaymentMethodToCustomerCase;

  PaymentCardsBloc({
    required GetUserPaymentMethods getUserPaymentMethodsCase,
    required DetachPaymentMethod detachPaymentMethodCase,
    required AddPaymentMethodToCustomer addPaymentMethodToCustomerCase}) :
        _getUserPaymentMethodsCase = getUserPaymentMethodsCase,
        _detachPaymentMethodCase = detachPaymentMethodCase,
        _addPaymentMethodToCustomerCase = addPaymentMethodToCustomerCase,
        super(const PaymentCardsState.initial()) {
    on<PaymentCardsEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(PaymentCardsEvent event, Emitter<PaymentCardsState> emit) => event.map(
      addCard: (e) => _addCard(e, emit),
      removeCard: (e) => _removeCard(e, emit),
      fetchCards: (e) => _fetchCards(e,emit));

  Future<void> _fetchCards(_FetchCardsEvent event, Emitter<PaymentCardsState> emit) async{
    final failureOrPaymentMethods = await _getUserPaymentMethodsCase.execute(GetUserPaymentMethodsParams(email: event.email));
    failureOrPaymentMethods.fold((_){}, (r){
      emit(PaymentCardsState.loaded(paymentMethods: r));
    });
  }

  Future<void> _removeCard(_RemoveCardEvent event, Emitter<PaymentCardsState> emit) async{
    final failureOrPaymentMethod = await _detachPaymentMethodCase.execute(DetachPaymentMethodParams(paymentMethodId: event.paymentMethodId));
    failureOrPaymentMethod.fold((_){}, (r){
      final pmId = r.id;
      emit(PaymentCardsState.removedCard(paymentMethods: state.paymentMethods));
      emit(PaymentCardsState.loaded(paymentMethods: state.paymentMethods.where((e) => e.id != pmId).toList()));
    });
  }

  Future<void> _addCard(_AddCardEvent event, Emitter<PaymentCardsState> emit) async{
    final failureOrPaymentMethod = await _addPaymentMethodToCustomerCase.execute(AddPaymentMethodToCustomerParams(
        email: event.email, card: event.card, cvc: event.cvc, expYear: event.expYear, expMonth: event.expMonth, holderName: event.holderName));
    failureOrPaymentMethod.fold((l){
      emit(PaymentCardsState.failCardAdd(paymentMethods: state.paymentMethods));
      emit(PaymentCardsState.loaded(paymentMethods: state.paymentMethods));
    }, (r){
      emit(PaymentCardsState.addedCard(paymentMethods: [r, ...state.paymentMethods]));
      emit(PaymentCardsState.loaded(paymentMethods: state.paymentMethods));
    });
  }
}
