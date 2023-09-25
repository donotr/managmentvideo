import 'package:intl/intl.dart';

class Formats{
  static String formatsReadeableNumber(double number){

    final formattedNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
      ).format(number);
    return formattedNumber;
  }
}