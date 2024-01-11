import 'dart:math' as math;
import 'dart:math';

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

  var randomUrl = url[randomIndex];
  return randomUrl;
}

String nameRandomTypeUtil() {
  var url = [
    "Hotel",
    "Kost",
    "Guest house",
    "Resort",
  ];

  var random = math.Random();
  var randomIndex = random.nextInt(url.length);

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

String randomResortKota() {
  var data = [
    "https://th.bing.com/th/id/OIG.cEHAnIqYySRIm43y0EEQ?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.sHNE7NFlZHqRSP6IwJvY?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.nhZ7KZWehcoEllHdp5uh?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.J_j595LfJURz.eZRba9g?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.Km0xeKJlU2Ho.GypMlXE?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.vx1QY2DGrJ5L5TCMFp06?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.tWKMxVKdgKXoQysmKSRC?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.cXNSjVBespZDOwqmpYvw?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortHutan() {
  var data = [
    "https://th.bing.com/th/id/OIG.DkG1IiaXpKPVkidegyXD?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.VW0hxLwta34ibLotE85Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.kXM44U94TS4QI2Q.CcQ6?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.YRm1I57KrWL4wsMWEd4l?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.vaMJK8zhS0aWP4ia.HMw?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.0Ce5fc_Q_n6j1IxL4umy?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.UbyHhWT7R2M3A1L8Xz4Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.5GTU72RiqCrBApjvC8LX?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortGunung() {
  var data = [
    "https://th.bing.com/th/id/OIG.DkG1IiaXpKPVkidegyXD?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.wbQMQvPE69Uf5TgaXrtR?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.35ZAyeGXay3bpjIFUDYS?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.LpOw6M.l45IQkn1PxY0Q?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.LyRe8W4Dh9h2IPtr12U2?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.FQ9nKTa0eMEuhz6plzhf?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.xdMMZUyaratXsrj6FfUx?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.JPiCREWrtVNDObzl5eWs?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.S4t1Nag5HSsu.7TkFoSG?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String randomResortPantai() {
  var data = [
    "https://th.bing.com/th/id/OIG.Z7fyVvG4jvRyS559ymfL?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.oYRoFPy4z4e7PyW3xYsI?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.v.A1a5LIWp3jHxQ_V6lI?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.Ehsbm9_dNoenh53d5cyE?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.J.SoFRFWUE2WlbaS8nCm?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.PMdUmdJm3EUHwLQI6uLZ?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.rPqg9UtwH9GMtZ8ZPE7M?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.nsQufVvlfTnXO08p_On0?pid=ImgGn",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

List<Map<String, String>> randomLocationResort() {
  var data = [
    {
      "nama": "Perkotaan",
      "image": randomResortKota(),
    },
    {
      "nama": "Pegunungan",
      "image": randomResortGunung(),
    },
    {
      "nama": "Pantai Pasir",
      "image": randomResortPantai(),
    },
    {
      "nama": "Hutan Tropis",
      "image": randomResortHutan(),
    },
  ];

  data.shuffle();
  return data;
}

List<Map<String, String>> randomRoomAvail() {
  List<Map<String, String>> jenisKamar = [
    {
      "nama": "Single Room",
      "deskripsi": "Kamar untuk satu tamu dengan satu tempat tidur."
    },
    {
      "nama": "Double Room",
      "deskripsi": "Kamar untuk dua tamu dengan satu tempat tidur ganda."
    },
    {
      "nama": "Twin Room",
      "deskripsi": "Kamar untuk dua tamu dengan dua tempat tidur terpisah."
    },
    {
      "nama": "Triple Room",
      "deskripsi": "Kamar untuk tiga tamu, biasanya dengan tiga tempat tidur."
    },
    {
      "nama": "Suite",
      "deskripsi":
          "Kamar yang lebih besar dan seringkali lebih mewah, dengan area ruang tamu terpisah."
    },
    {
      "nama": "Presidential Suite",
      "deskripsi":
          "Suite paling mewah dalam hotel, seringkali digunakan oleh tamu kenamaan atau tamu VIP."
    },
    {
      "nama": "Connecting Rooms",
      "deskripsi":
          "Dua kamar atau lebih yang dapat terhubung melalui pintu di antara mereka."
    },
    {
      "nama": "Family Room",
      "deskripsi":
          "Kamar yang dirancang khusus untuk penginapan keluarga, mungkin dengan fasilitas tambahan."
    },
    {
      "nama": "Accessible Room",
      "deskripsi":
          "Kamar yang dirancang untuk tamu dengan kebutuhan khusus atau disabilitas."
    },
    {
      "nama": "Adjoining Rooms",
      "deskripsi":
          "Kamar yang bersebelahan satu sama lain, namun tidak terhubung secara langsung."
    },
    {
      "nama": "Economy Room",
      "deskripsi":
          "Kamar dengan fasilitas yang lebih sederhana dan harga yang lebih terjangkau."
    },
    {
      "nama": "Penthouse",
      "deskripsi":
          "Suite yang terletak di lantai paling atas dengan pemandangan yang istimewa."
    }
  ];

  jenisKamar.shuffle(); // Mengacak list

  int jumlahMax = min(5,
      jenisKamar.length); // Ambil maksimum 10 elemen jika jumlah lebih dari 10

  List<Map<String, String>> hasilRandom = jenisKamar.sublist(0, jumlahMax);
  return hasilRandom;
}

String randomUiPayment() {
  var data = [
    "https://th.bing.com/th/id/OIG.mqUaa9oYuzZnZ3Sl9Z3z?w=1024&h=1024&rs=1&pid=ImgDetMain",
    "https://th.bing.com/th/id/OIG.rijptG8BZgMUMJyI.thd?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.cutXgnPbnOfg5O7ciZa7?pid=ImgGn",
    "https://th.bing.com/th/id/OIG.KlHFVdYq.WEGMRZ1D1Lc?pid=ImgGn"
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}
