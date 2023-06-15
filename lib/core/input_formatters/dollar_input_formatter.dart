import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class CurrencyInputFormatter extends TextInputFormatter {
  final String currency;
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue,
      TextEditingValue newValue,
      ) {
    // Remove any non-digit characters from the new value
    String cleanedText = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');

    // Parse the cleaned text as an integer
    int value = int.tryParse(cleanedText) ?? 0;

    // Add a dollar sign to the beginning of the formatted value
    String formattedValue = '$currency ${NumberFormat.decimalPattern().format(value)}';

    // If the value is less than 0, set it to 0
    if (value < 0) {
      value = 0;
      formattedValue = '$currency 0';
    }

    return newValue.copyWith(
      text: formattedValue,
      selection: TextSelection.collapsed(offset: formattedValue.length),
    );
  }

  CurrencyInputFormatter({
    required this.currency,
  });
}