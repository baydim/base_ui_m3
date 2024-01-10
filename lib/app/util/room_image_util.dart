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
    "Budi Setiawan",
    "Dewi Rahayu",
    "Arif Saputra",
    "Siti Hidayah",
    "Iwan Santoso",
    "Nia Fitriani",
    "Joko Susilo",
    "Maya Sari",
    "Adi Pratama",
    "Rini Cahyani",
    "Dwi Nugroho",
    "Rina Indah",
    "Fahmi Akbar",
    "Anisa Putri",
    "Dian Kusuma",
    "Rizki Ramadhan",
    "Sari Wahyuni",
    "Yoga Pranata",
    "Nova Kurniawan",
    "Astuti Wulandari",
  ];
  List<String> comments = [
    "Hotel ini sungguh luar biasa! Pelayanan dan fasilitasnya memukau, saya memberikan rating 5 bintang!",
    "Menginap di hotel ini membuat saya merasa istimewa. Suasana dan kenyamanannya luar biasa, 5/5!",
    "Staf hotel sangat ramah dan profesional. Saya sangat senang dengan pengalaman menginap saya.",
    "Desain interior hotel sangat elegan. Setiap detailnya terlihat sangat diperhatikan. Saya memberi rating 5/5.",
    "Pemandangan dari kamar hotel ini sungguh menakjubkan! Layanan kelas atas dan pemandangan yang indah.",
    "Sarapan di hotel ini luar biasa! Berbagai pilihan makanan yang lezat, saya sangat puas.",
    "Kenyamanan tempat tidur di hotel ini luar biasa. Saya tidur sangat nyenyak setiap malam.",
    "Fasilitas olahraga di hotel ini sangat lengkap. Saya dapat tetap aktif selama menginap.",
    "Lokasi hotel sangat strategis, dekat dengan tempat-tempat wisata utama. Sangat praktis untuk berkeliling.",
    "Pelayanan kamar sangat responsif dan efisien. Staf hotel selalu siap membantu.",
    "Kolam renang hotel ini sangat bersih dan menyegarkan. Sangat menyenangkan untuk bersantai di sana.",
    "Saya suka dengan suasana tenang di hotel ini. Cocok untuk liburan santai.",
    "Hotel ini menyediakan fasilitas bisnis yang sangat baik. Saya dapat bekerja dengan nyaman selama kunjungan saya.",
    "Desain arsitektur hotel ini unik dan menarik perhatian. Tempat yang sangat Instagrammable!",
    "Semua staf hotel ramah dan bersedia membantu dengan senyum. Saya merasa sangat diperlakukan dengan baik.",
    "Pengalaman makan malam di restoran hotel sangat istimewa. Chef mereka benar-benar pandai!",
    "Fasilitas spa di hotel ini memberikan pengalaman santai yang luar biasa. Saya merasa segar dan rileks setelahnya.",
    "Hotel ini sangat bersih dan terjaga dengan baik. Kebersihan sangat diutamakan, 5/5!",
    "Saya sangat merekomendasikan hotel ini untuk perjalanan bisnis atau liburan. Pengalaman menginap yang memuaskan.",
    "Hotel ini memberikan nilai lebih dengan adanya program kegiatan untuk tamu. Saya benar-benar menikmati waktu saya di sini."
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
