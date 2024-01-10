import 'dart:developer';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';

String roomRandomUtil() {
  var url = [
    "https://th.bing.com/th/id/OIG.H3F5E6PmS3.1wBuodwHV?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.oRrKj_uGE0NC8HaqpVjm?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.TqrIG6897MEfPFBYjqfz?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.H3F5E6PmS3.1wBuodwHV?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kxeK5hGQ.rGb140FfPTp?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.qvbk.Mg8IzarIGwJ2Uqb?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.V69oR2b8eXJteWVEkX8f?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.s6C0eYNb_Skz_WBcr7P8?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.t7IWJ.5v80VQuuaYAk6R?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.Wk6AR1tp5NKVw16OKVW4?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.5_9TNl6y0qdht3pDMGjw?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AuhOqW8.5lxROlAAuJFv?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.VtqepS5GA60KNgEd.yOs?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AM6CpVmj54ki_7HnIrX_?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.vuIzd4pfeTfdLxhB9pG7?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.AM6CpVmj54ki_7HnIrX_?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kE0Zhwc2H7ttbvDc4wSl?pid=ImgGn",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);
  log(randomIndex.toString());

  return url[randomIndex];
}

String promoRandomUtil() {
  var url = [
    "https://th.bing.com/th/id/OIG.HaTwF4tamiGpeIImqJyN?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.23UClhMw42Uo7ZSE7kDo?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.HaTwF4tamiGpeIImqJyN?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.JtYANL_5rmLdPwsSikrF?pid=ImgGn",
    "https://th.bing.com/th/id/OIG..8TrmdZ9p7HcFxmaYq.M?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.ufTEtDgdYGz70Rh6N9tB?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.0TFYBiYxjF8RCAG3MNhp?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.IvBfRGG1EP6nWLrvb8j8?pid=ImgGn",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);
  log(randomIndex.toString());

  var randomUrl = url[randomIndex];
  return randomUrl;
}

String nameRandomTypeUtil() {
  var url = [
    "Hotel",
    "Kost",
    "Guest house",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);
  log(randomIndex.toString());

  var randomUrl = url[randomIndex];
  return randomUrl;
}

Map<String, String> randomComment() {
  List<String> names = [
    "Alicia",
    "Budi",
    "Cindy",
    "Denny",
    "Eka",
    "Farhan",
    "Grace",
    "Hendri",
    "Ika",
    "Joko"
  ];
  List<String> comments = [
    "Pengalaman yang luar biasa! Stafnya sangat ramah dan fasilitasnya sangat baik.",
    "Hotel ini memiliki lokasi yang fantastis, sangat nyaman untuk menjelajahi kota.",
    "Kamar bersih dan nyaman. Saya menikmati menginap di sini.",
    "Pemandangan indah dari kamar. Saya pasti akan kembali.",
    "Pelayanannya luar biasa. Puji bagi staf hotel!",
    "Makanan lezat di restoran hotel. Saya sangat merekomendasikannya.",
    "Kamar luas dan terdekorasi dengan baik. Sempurna untuk menghabiskan waktu santai.",
    "Fasilitas yang disediakan melebihi harapan saya.",
    "Proses check-in dan check-out yang lancar. Sangat efisien.",
    "Saya menghabiskan waktu yang indah di hotel ini. Semuanya sempurna.",
  ];

  math.Random random = math.Random();

  String name = names[random.nextInt(names.length)];
  String comment = comments[random.nextInt(comments.length)];

  Map<String, String> review = {"nama": name, "komentar": comment};

  // Menampilkan komentar yang dihasilkan (opsional)
  if (kDebugMode) {
    print("Pengguna ${review['nama']} berkata - \"${review['komentar']}\"");
  }

  return review;
}
