import 'dart:math';

import 'package:intl/intl.dart';

String priceRandomUtil() {
  var random = Random();
  var minUang = 40000;
  var maxUang = 1000000;

  // Menghasilkan nilai acak antara minUang dan maxUang
  var randomUang = minUang + random.nextInt(maxUang - minUang + 1);
  var numberFormat = NumberFormat.currency(
    locale: 'id_ID',
    symbol: "",
    decimalDigits: 0,
  );

  String harga = numberFormat.format(randomUang);
  return harga;
}
