import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../theme/app_theme.dart';
import '../../../util/random/date_random_util.dart';
import '../../../util/random/price_room_util.dart';
import '../controllers/detail_hotel_controller.dart';
import '../../../util/random/alamat_random_util.dart';
import '../../../util/random/room_image_util.dart';

class DetailHotelView extends GetView<DetailHotelController> {
  const DetailHotelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Random random = Random();
    var size = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        Positioned.fill(
            child: ListView(
          children: [
            AspectRatio(
              aspectRatio: 16 / 10,
              child: Stack(
                children: [
                  ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < 5; i++)
                        Card(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: appColor(context).useScheme.primary,
                          child: Stack(
                            children: [
                              AspectRatio(
                                aspectRatio: 16 / 10,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: FadeInImage(
                                    image: NetworkImage(
                                      roomRandomUtil(),
                                    ),
                                    placeholder: const AssetImage(
                                      "assets/images/peace.png",
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned.fill(
                                child: Material(
                                  borderRadius: BorderRadius.circular(
                                    8,
                                  ),
                                  color: Colors.transparent,
                                  child: InkWell(
                                    borderRadius: BorderRadius.circular(8),
                                    onTap: () {},
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                    ],
                  ),
                  Positioned(
                      bottom: 10,
                      left: 20,
                      right: 20,
                      child: Column(
                        children: [
                          IntrinsicWidth(
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 10,
                                vertical: 5,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                color: appColor(context).useScheme.background,
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  for (var i = 0; i < 5; i++)
                                    Padding(
                                      padding: const EdgeInsets.all(
                                        2.5,
                                      ),
                                      child: CircleAvatar(
                                        radius: 4,
                                        backgroundColor:
                                            appColor(context).useScheme.primary,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )),
                  // Positioned(
                  //   bottom: 20,
                  //   child: Padding(
                  //     padding: const EdgeInsets.symmetric(horizontal: 20),
                  //     child: Row(
                  //       children: [
                  //         for (var i = 0; i < random.nextInt(5) + 1; i++)
                  //           Icon(
                  //             Icons.star_rate_rounded,
                  //             size: 20,
                  //             color: Colors.yellow.shade700,
                  //           ),
                  //         const SizedBox(
                  //           width: 10,
                  //         ),
                  //         Container(
                  //           padding: const EdgeInsets.symmetric(
                  //               horizontal: 10, vertical: 2.5),
                  //           decoration: BoxDecoration(
                  //             color: appColor(context)
                  //                 .useScheme
                  //                 .secondaryContainer,
                  //             borderRadius: BorderRadius.circular(
                  //               5,
                  //             ),
                  //           ),
                  //           child: Text(
                  //             "Hotel",
                  //             style: appFont(context).labelSmall?.copyWith(
                  //                   color: appColor(context).useScheme.primary,
                  //                 ),
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                randomNameHotelUtil(),
                style: appFont(context).bodyLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            const SizedBox(
              height: 2.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Opacity(
                opacity: 0.5,
                child: Text(
                  randomAlamatUtil(),
                  style: appFont(context).labelSmall?.copyWith(),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  const FlutterLogo(
                    size: 15,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    double.parse((random.nextDouble() * (10.0 - 1.0) + 1.0)
                            .toStringAsFixed(1))
                        .toString(),
                    style: appFont(context).bodyMedium?.copyWith(
                          color: appColor(context).useScheme.primary,
                        ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: Text(
                      "(${random.nextInt(500) + 1})",
                      style: appFont(context).bodyMedium?.copyWith(),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        for (var i = 0; i < random.nextInt(5) + 1; i++)
                          Icon(
                            Icons.star_rate_rounded,
                            size: 15,
                            color: Colors.yellow.shade700,
                          ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 2.5),
                          decoration: BoxDecoration(
                            color:
                                appColor(context).useScheme.secondaryContainer,
                            borderRadius: BorderRadius.circular(
                              5,
                            ),
                          ),
                          child: Text(
                            nameRandomTypeUtil(),
                            style: appFont(context).labelSmall?.copyWith(
                                  color: appColor(context).useScheme.primary,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color:
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Fasilitas",
                      style: appFont(context).bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  GridView.count(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    crossAxisCount: 4,
                    children: [
                      for (var i = 0; i < (5 + random.nextInt(15 - 5 + 1)); i++)
                        randomFasilitas(context, i)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color:
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      "Komentar",
                      style: appFont(context).bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  SizedBox(
                    width: size.width,
                    height: size.width / 3,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        for (var i = 0;
                            i < (2 + random.nextInt(15 - 2 + 1));
                            i++)
                          cardCommentar(context),
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),

            ///
            ///
            ///
            ///
            ///
            ///
            ///
            ///
            const SizedBox(
              height: 10,
            ),
            for (var i in randomRoomAvail())
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                    ),
                    child: Text(
                      i["nama"] as String,
                      style: appFont(context).bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      child: Text(
                        i["deskripsi"] as String,
                        style: appFont(context).labelSmall?.copyWith(),
                      ),
                    ),
                  ),
                  IntrinsicHeight(
                    child: Card(
                      margin: const EdgeInsets.symmetric(
                        vertical: 4,
                        horizontal: 20,
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      elevation: 0,
                      color: appColor(context)
                          .useScheme
                          .inversePrimary
                          .withOpacity(0.2),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: MediaQuery.of(context).size.width / 3,
                                  decoration: BoxDecoration(
                                    color: appColor(context).useScheme.primary,
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                  ),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    child: FadeInImage(
                                      image: NetworkImage(
                                        roomRandomUtil(),
                                      ),
                                      placeholder: const AssetImage(
                                        "assets/images/peace.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    10,
                                  ),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              i["nama"] as String,
                                              style: appFont(context)
                                                  .bodySmall
                                                  ?.copyWith(),
                                            ),
                                            Text(
                                              "Rp${priceRandomUtil()}",
                                              style: appFont(context)
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      ElevatedButton.icon(
                                        style: ButtonStyle(
                                          padding:
                                              const MaterialStatePropertyAll(
                                            EdgeInsets.symmetric(
                                              horizontal: 15,
                                              vertical: 8,
                                            ),
                                          ),
                                          minimumSize:
                                              const MaterialStatePropertyAll(
                                            Size.zero,
                                          ),
                                          textStyle: MaterialStatePropertyAll(
                                            appFont(context).bodySmall,
                                          ),
                                        ),
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons.verified_outlined,
                                          size: 20,
                                        ),
                                        label: const Text("Booking"),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              )
          ],
        )),
        Positioned(
          left: 15,
          top: 10,
          child: SafeArea(
            child: FloatingActionButton.small(
              heroTag: "null",
              onPressed: () {
                Get.back();
              },
              child: const Icon(
                Icons.arrow_back_rounded,
              ),
            ),
          ),
        )
      ],
    ));
  }
}

Widget cardCommentar(BuildContext context) {
  var data = randomComment();
  return Card(
    color: appColor(context).useScheme.primaryContainer,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        8,
      ),
    ),
    child: ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: MediaQuery.of(context).size.width / 2,
        // maxHeight: MediaQuery.of(context).size.width / 4,
        // minHeight: MediaQuery.of(context).size.width / 4 - 1,
      ),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Opacity(
                  opacity: 0.8,
                  child: Text(
                    data["nama"] ?? "--",
                    style: appFont(context).labelSmall?.copyWith(
                          color: appColor(context).useScheme.primary,
                        ),
                  ),
                ),
                Row(
                  children: [
                    for (var i = 0; i < Random().nextInt(5) + 1; i++)
                      Icon(
                        Icons.star_rate_rounded,
                        size: 13,
                        color: Colors.yellow.shade700,
                      ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                // Expanded(
                //   child:

                Expanded(
                  child: Text(
                    data["komentar"] ?? "--",
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    style: appFont(context).labelSmall?.copyWith(
                          color: appColor(context).useScheme.primary,
                        ),
                  ),
                ),

                Opacity(
                  opacity: 0.8,
                  child: Text(
                    randomDaysString(),
                    style: appFont(context).labelSmall?.copyWith(
                          fontSize: 10,
                          color: appColor(context).useScheme.primary,
                        ),
                  ),
                ),
                // ),
              ],
            ),
          ),
          Positioned.fill(
            child: Material(
              borderRadius: BorderRadius.circular(
                8,
              ),
              color: Colors.transparent,
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (cxt) {
                      return BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 2,
                          sigmaY: 2,
                        ),
                        child: Dialog(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(
                            8,
                          )),
                          backgroundColor:
                              appColor(context).useScheme.primaryContainer,
                          child: IntrinsicHeight(
                            child: IntrinsicWidth(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        data["nama"] ?? "--",
                                        style: appFont(context)
                                            .labelSmall
                                            ?.copyWith(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        for (var i = 0;
                                            i < Random().nextInt(5) + 1;
                                            i++)
                                          Icon(
                                            Icons.star_rate_rounded,
                                            size: 13,
                                            color: Colors.yellow.shade700,
                                          ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    // Expanded(
                                    //   child:

                                    Text(
                                      data["komentar"] ?? "--",
                                      style:
                                          appFont(context).labelSmall?.copyWith(
                                                color: appColor(context)
                                                    .useScheme
                                                    .primary,
                                              ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Opacity(
                                      opacity: 0.8,
                                      child: Text(
                                        randomDaysString(),
                                        style: appFont(context)
                                            .labelSmall
                                            ?.copyWith(
                                              fontSize: 10,
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                      ),
                                    ),
                                    // ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    ),
  );
}

Widget randomFasilitas(BuildContext context, int i) {
  var data = materialIcons()[i];
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      const SizedBox(
        height: 5,
      ),
      CircleAvatar(
        radius: 20,
        child: Icon(
          data["icon"] as IconData,
          size: 18,
          color: appColor(context).useScheme.primary,
        ),
      ),
      Expanded(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 5,
            ),
            child: Text(
              data["nama"] as String,
              style: appFont(context).labelSmall?.copyWith(
                    fontWeight: FontWeight.normal,
                  ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      )
    ],
  );
}

List<Map<String, Object>> materialIcons() {
  var materialIcon = [
    {"icon": Icons.hotel, "nama": "Hotel"},
    {"icon": Icons.favorite, "nama": "Favorit"},
    {"icon": Icons.wifi, "nama": "Wi-Fi"},
    {"icon": Icons.alarm, "nama": "Alarm"},
    {"icon": Icons.account_balance, "nama": "Pelayanan Keuangan"},
    {"icon": Icons.pool, "nama": "Kolam Renang"},
    {"icon": Icons.bluetooth, "nama": "Bluetooth"},
    {"icon": Icons.cake, "nama": "Restoran"},
    {"icon": Icons.directions_bike, "nama": "Fasilitas Olahraga"},
    {"icon": Icons.event, "nama": "Ruang Acara"},
    {"icon": Icons.flash_on, "nama": "Listrik"},
    {"icon": Icons.gavel, "nama": "Layanan Hukum"},
    {"icon": Icons.hourglass_empty, "nama": "Jam Check-in/Check-out"},
    {"icon": Icons.insert_chart, "nama": "Fasilitas Bisnis"},
    {"icon": Icons.language, "nama": "Layanan Multibahasa"},
    {"icon": Icons.mic, "nama": "Fasilitas Konferensi"},
    {"icon": Icons.palette, "nama": "Layanan Seni atau Desain"},
    {"icon": Icons.radio, "nama": "Hiburan atau Komunikasi"},
    {"icon": Icons.school, "nama": "Fasilitas Pendidikan"},
    {"icon": Icons.train, "nama": "Transportasi"},
    {"icon": Icons.local_parking, "nama": "Tempat Parkir"},
    {"icon": Icons.room_service, "nama": "Layanan Kamar"},
    {"icon": Icons.ac_unit, "nama": "AC"},
    {"icon": Icons.local_bar, "nama": "Bar atau Lounge"},
    {"icon": Icons.local_laundry_service, "nama": "Layanan Laundry"},
    {"icon": Icons.local_grocery_store, "nama": "Toko Kelontong"},
    {"icon": Icons.spa, "nama": "Spa"},
    {"icon": Icons.pets, "nama": "Hewan Peliharaan"},
    {"icon": Icons.smoke_free, "nama": "Kamar Bebas Asap Rokok"},
    {"icon": Icons.child_friendly, "nama": "Lingkungan Ramah Anak"},
  ];

  materialIcon.shuffle();
  return materialIcon;
}
