import 'dart:math';

String randomAlamatUtil() {
  var data = [
    "Jl. Pahlawan No. 10, Kel. Tegalrejo, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50126",
    "Jl. Kusuma Bangsa No. 25, Kel. Pandean, Kec. Madiun, Kota Madiun, Jawa Timur 63123",
    "Jl. Sudirman Baru No. 15, Kel. Karangkidul, Kec. Boyolali, Kab. Boyolali, Jawa Tengah 57312",
    "Jl. Diponegoro No. 7, Kel. Banyumanik, Kec. Semarang Selatan, Kota Semarang, Jawa Tengah 50269",
    "Jl. Arjuna Timur No. 42, Kel. Pucang Anom, Kec. Kediri, Kota Kediri, Jawa Timur 64128",
    "Jl. Veteran No. 33, Kel. Mojorejo, Kec. Sidoarjo, Kota Sidoarjo, Jawa Timur 61212",
    "Jl. Kawi Barat No. 19, Kel. Kepanjen, Kec. Kepanjen, Kab. Malang, Jawa Timur 65163",
    "Jl. Merbabu Utara No. 12, Kel. Candi, Kec. Magelang Utara, Kota Magelang, Jawa Tengah 56126",
    "Jl. Dr. Wahidin Sudirohusodo No. 5, Kel. Semanggi, Kec. Salatiga, Kota Salatiga, Jawa Tengah 50727",
    "Jl. Imam Bonjol No. 8, Kel. Tlogosari, Kec. Semarang Utara, Kota Semarang, Jawa Tengah 50134",
    "Jl. Kartini No. 14, Kel. Ngestiharjo, Kec. Salatiga, Kota Salatiga, Jawa Tengah 50711",
    "Jl. Kertanegara No. 29, Kel. Mojoagung, Kec. Jombang, Kab. Jombang, Jawa Timur 61482",
    "Jl. Ahmad Yani No. 17, Kel. Klaten Selatan, Kec. Klaten Selatan, Kab. Klaten, Jawa Tengah 57433",
    "Jl. Diponegoro No. 23, Kel. Mojolangu, Kec. Lowokwaru, Kota Malang, Jawa Timur 65142",
    "Jl. Gajah Mada No. 11, Kel. Glagahsari, Kec. Karanganyar, Kab. Karanganyar, Jawa Tengah 57711",
    "Jl. Teuku Umar No. 32, Kel. Bangkalsari, Kec. Tegal, Kab. Tegal, Jawa Tengah 52127",
    "Jl. Diponegoro No. 6, Kel. Kotabaru, Kec. Banjarnegara, Kab. Banjarnegara, Jawa Tengah 53416",
    "Jl. Pahlawan No. 20, Kel. Mojolaban, Kec. Sukoharjo, Kab. Sukoharjo, Jawa Tengah 57554",
    "Jl. Slamet Riyadi No. 18, Kel. Purwosari, Kec. Solo Baru, Kota Surakarta, Jawa Tengah 57146",
    "Jl. A. Yani No. 14, Kel. Simpanglima, Kec. Semarang Barat, Kota Semarang, Jawa Tengah 50135",
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}

String getKotaFromAlamatUtil(String data) {
  var alamatParts = data.split(', ');
  if (alamatParts.length > 3) {
    return alamatParts[3];
  } else {
    return "Tidak Dapat Memperoleh Nama Kota";
  }
}

String randomNameHotelUtil() {
  var data = [
    "Hotel Bintang Lima",
    "Grand Puri Indah Hotel",
    "Majestic Hotel Semarang",
    "Prambanan Heritage Hotel",
    "Harper's Den Hotel Solo",
    "East Java Paradise Resort",
    "Semarang City Center Hotel",
    "Kediri Comfort Suites",
    "Mount Bromo View Hotel",
    "Magelang Palace Hotel",
    "Yogyakarta Royal Suites",
    "Malang Hills Resort",
    "Salatiga Serenity Hotel",
    "Tawangmangu Valley Inn",
    "Solo Prestige Hotel",
    "Tulungagung Terrace Suites",
    "Karimunjawa Island Resort",
    "Jepara Oceanfront Hotel",
    "Pacitan Cliffside Retreat",
    "Candi Mendut Boutique Hotel",
    "Tuban Tropical Oasis Hotel",
    "Batu Mountain Lodge",
    "Temanggung Tranquil Resort",
    "Blitar Beachfront Hotel",
    "Cirebon Crown Plaza",
    "Sleman Skyline Suites",
    "Trawas Tranquility Resort",
    "Magelang Riverside Hotel",
    "Ngawi Nature Retreat",
    "Gresik Grand Regency",
    "Pekalongan Palatial Hotel",
    "Sragen Surya Residence",
    "Malang Majesty Hotel",
    "Klaten Comfort Inn",
    "Madiun Magnificent Suites",
    "Banyuwangi Beach Resort",
    "Pacitan Pearl Hotel",
    "Demak Dynasty Hotel",
    "Lamongan Lagoon Lodge",
    "Salatiga Summit Resort",
    "Madura Mirage Hotel"
  ];

  var random = Random();
  var randomIndex = random.nextInt(data.length);

  return data[randomIndex];
}
