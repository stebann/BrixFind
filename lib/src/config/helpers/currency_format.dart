import 'package:intl/intl.dart';

class CurrencyFormat {
  static final _currencyFormat = NumberFormat('#,##0', 'en_US');

  static String formatPrice(num price) {
    return _currencyFormat.format(price);
  }
}
