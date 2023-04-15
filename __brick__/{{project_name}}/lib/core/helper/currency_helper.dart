import 'package:intl/intl.dart';

class CurrencyHelper {
  static String convert({
    required double number,
    required int decimalDigit,
    bool? deleteSymbols,
    String? locale = 'id',
    String? symbols = 'Rp',
  }) {
    NumberFormat currencyFormatter = NumberFormat.currency(
      locale: locale,
      symbol: (deleteSymbols ?? false) ? '' : symbols,
      decimalDigits: decimalDigit,
    );
    if (number == null) return currencyFormatter.format(0);
    return currencyFormatter.format(number);
  }
}
