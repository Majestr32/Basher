import 'package:allxclusive/core/theme/colors.dart';
import 'package:flutter/material.dart';

enum TicketsTypes{
  regular('Regular', Color(0xFF5E5CE6)),
  vip('Vip', Color(0xFFA3972F));

  static TicketsTypes fromString(String val) => TicketsTypes.values.firstWhere((t) => t.name == val, orElse: () => TicketsTypes.regular);

  final String name;
  final Color color;
  const TicketsTypes(this.name, this.color);
}