import 'package:allxclusive/shared/domain/entities/ticket/ticket.dart';
import 'package:pay/pay.dart';

extension TicketsToPaymentItems on List<Ticket>{
  List<PaymentItem> get paymentItems => map((e) => PaymentItem(amount: e.price.toStringAsFixed(2), label: e.description, status: PaymentItemStatus.final_price, type: PaymentItemType.total)).toList();
}