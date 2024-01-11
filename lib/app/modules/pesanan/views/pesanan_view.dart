import 'dart:math';

import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/app_theme.dart';
import '../../../util/random/alamat_random_util.dart';
import '../../../util/random/price_room_util.dart';
import '../../../util/random/room_image_util.dart';
import '../controllers/pesanan_controller.dart';
import 'widget/widget_card_pesanan.dart';

class PesananView extends GetView<PesananController> {
  const PesananView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('Pesanan'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                Get.toNamed(Routes.NOTIFICATION);
              },
              icon: const Badge(
                label: Text("2"),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ))
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              height: 45,
              child: SearchBar(
                textStyle: MaterialStatePropertyAll(
                  appFont(context).bodySmall,
                ),
                padding: const MaterialStatePropertyAll(
                  EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 20,
                  ),
                ),
                hintText: "Cari Pesanan...",
                leading: Icon(
                  Icons.search,
                  color: appColor(context).useScheme.primary,
                  size: 20,
                ),
                elevation: const MaterialStatePropertyAll(0),
                backgroundColor: MaterialStatePropertyAll(
                  appColor(context).useScheme.inversePrimary.withOpacity(0.2),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const WidgetCardPesanan(
            isWait: false,
          ),
          const WidgetCardPesanan(
            isWait: true,
          ),
          const WidgetCardPesanan(
            isWait: true,
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Text(
              "Baru Anda Lihat",
              style: appFont(context).titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  for (var i = 0; i < 5; i++)
                    Row(
                      children: [
                        IntrinsicHeight(
                          child: Card(
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
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        height:
                                            MediaQuery.of(context).size.width /
                                                3,
                                        decoration: BoxDecoration(
                                          color: appColor(context)
                                              .useScheme
                                              .primary,
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(
                                            8,
                                          ),
                                          child: FadeInImage(
                                            image:
                                                NetworkImage(roomRandomUtil()),
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
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              randomNameHotelUtil(),
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
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Opacity(
                                              opacity: 0.5,
                                              child: Text(
                                                getKotaFromAlamatUtil(
                                                  randomAlamatUtil(),
                                                ),
                                                style: appFont(context)
                                                    .labelSmall
                                                    ?.copyWith(),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Positioned.fill(
                                  child: Material(
                                    borderRadius: BorderRadius.circular(
                                      8,
                                    ),
                                    color: Colors.transparent,
                                    child: InkWell(
                                      onTap: () {
                                        Get.toNamed(Routes.DETAIL_HOTEL);
                                      },
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 0,
                        ),
                      ],
                    ),
                  const SizedBox(
                    width: 10,
                  ),
                  FloatingActionButton.small(
                    heroTag: Random.secure().nextInt(100).toString(),
                    elevation: 0,
                    onPressed: () {},
                    child: Icon(
                      Icons.arrow_forward_rounded,
                      color: appColor(context).useScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
