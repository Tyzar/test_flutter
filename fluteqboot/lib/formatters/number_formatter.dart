import 'package:intl/intl.dart';

String toCurrencyFmt(double num,
    {required String locale, required String symbol}) {
  final numFormat = NumberFormat.currency(locale: locale, symbol: symbol);
  return numFormat.format(num);
}
