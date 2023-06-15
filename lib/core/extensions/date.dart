import 'package:intl/intl.dart';

extension DateParserExtension on DateTime{
  String get formatted => DateFormat('dd.MM.yyyy').format(this);
}
extension DateParserNoYearExtension on DateTime{
  String get formattedNoYear => DateFormat('dd.MM').format(this);
}
extension DateParserTextedExtension on DateTime{
  String get formattedTexted => DateFormat.yMMMd().format(this);
}
extension StringToDateParserExtension on String{
  DateTime get date => DateFormat('dd.MM.yyyy').parse(this);
}
extension TimeParserExtension on DateTime{
  String get formattedTime => DateFormat.Hm().format(this);
}
extension StringToTimeParserExtension on String{
  DateTime get time => DateFormat.Hm().parse(this);
}