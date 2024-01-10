import 'dart:math';

String randomDaysString() {
  DateTime sekarang = DateTime.now().subtract(
    const Duration(
      days: 1,
    ),
  );
  DateTime duaBulanDariSekarang = tambahBulan(sekarang, -2);

  DateTime tanggalAcak = generateRandomDate(duaBulanDariSekarang, sekarang);

  String hasil = perbedaanWaktu(sekarang, tanggalAcak);

  return hasil;
}

DateTime tambahBulan(DateTime date, int months) {
  return DateTime(date.year, date.month + months, date.day, date.hour,
      date.minute, date.second, date.millisecond, date.microsecond);
}

DateTime generateRandomDate(DateTime startDate, DateTime endDate) {
  Random random = Random();
  int randomSeconds =
      random.nextInt(endDate.difference(startDate).inSeconds + 1);
  return startDate.add(Duration(seconds: randomSeconds));
}

String perbedaanWaktu(DateTime now, DateTime other) {
  Duration difference = now.difference(other);
  if (difference.inSeconds < 60) {
    return 'Baru saja';
  } else if (difference.inMinutes < 60) {
    return '${difference.inMinutes} Menit lalu';
  } else if (difference.inHours < 24) {
    return '${difference.inHours} Jam lalu';
  } else if (difference.inDays < 7) {
    return '${difference.inDays} Hari lalu';
  } else if (difference.inDays < 30) {
    int weeks = (difference.inDays / 7).floor();
    return '$weeks Minggu lalu';
  } else {
    int months = (difference.inDays / 30).floor();
    return '$months Bulan lalu';
  }
}
