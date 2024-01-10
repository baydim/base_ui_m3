import 'dart:math';

import 'package:base_ui_m3/app/util/alamat_random_util.dart';
import 'package:base_ui_m3/app/util/room_image_util.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../../../util/date_random_util.dart';
import '../controllers/detail_hotel_controller.dart';

class DetailHotelView extends GetView<DetailHotelController> {
  const DetailHotelView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Random random = Random();
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
                      "Komentar",
                      style: appFont(context).bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.5,
                  ),
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          for (var i = 0; i < Random().nextInt(50); i++)
                            cardCommentar(context),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
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
    color: appColor(context).useScheme.primary,
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
      child: Padding(
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
                      color: appColor(context).useScheme.brightness ==
                              Brightness.dark
                          ? Colors.black
                          : Colors.white,
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

            Text(
              data["komentar"] ?? "--",
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: appFont(context).labelSmall?.copyWith(
                    color: appColor(context).useScheme.brightness ==
                            Brightness.dark
                        ? Colors.black
                        : Colors.white,
                  ),
            ),
            const SizedBox(
              height: 5,
            ),
            Opacity(
              opacity: 0.8,
              child: Text(
                randomDaysString(),
                style: appFont(context).labelSmall?.copyWith(
                      fontSize: 10,
                      color: appColor(context).useScheme.brightness ==
                              Brightness.dark
                          ? Colors.black
                          : Colors.white,
                    ),
              ),
            ),
            // ),
          ],
        ),
      ),
    ),
  );
}