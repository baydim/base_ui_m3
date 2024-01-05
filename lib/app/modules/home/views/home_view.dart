import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widget/widget_button_search.dart';
import 'widget/widget_city_round.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BASE UI M3"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Badge(
                label: Text("2"),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Card(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              elevation: 0,
              color: appColor(context).useThemeData.primaryColor,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.payments_rounded,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Saldo anda",
                                    style: appFont(context).bodySmall?.copyWith(
                                          color: Colors.white,
                                        ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Rp. 100.000",
                                style: appFont(context).titleLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              )
                            ],
                          ),
                        ),
                        IconButton.filledTonal(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.send_outlined,
                            color: appColor(context).useScheme.primary,
                            size: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        IconButton.filledTonal(
                          color: Colors.white,
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            color: appColor(context).useScheme.primary,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const WidgetButtonSearch(),
          const WidgetCityRound(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Untuk Anda",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: Get.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    for (var i = 0; i < 10; i++)
                      Row(
                        children: [
                          IntrinsicHeight(
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                              elevation: 0,
                              color: appColor(context)
                                  .useScheme
                                  .inversePrimary
                                  .withOpacity(0.2),
                              child: InkWell(
                                borderRadius: BorderRadius.circular(8),
                                onTap: () {},
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Expanded(
                                        flex: 2,
                                        child: Container(
                                          width: Get.width / 1.8,
                                          decoration: BoxDecoration(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                8,
                                              )),
                                        )),
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
                                              "Nama Hotel / Penginapan",
                                              style: appFont(context)
                                                  .bodySmall
                                                  ?.copyWith(),
                                            ),
                                            Text(
                                              "Rp. 140.000",
                                              style: appFont(context)
                                                  .bodyLarge
                                                  ?.copyWith(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              "Jalan Lokasi Hotel",
                                              style: appFont(context)
                                                  .bodySmall
                                                  ?.copyWith(
                                                    color: Colors.black54,
                                                  ),
                                            )
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 0,
                          ),
                        ],
                      ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Diskon dekat kamu",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: appColor(context).useScheme.primary,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: const AspectRatio(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Premium nampol",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: appColor(context).useScheme.primary,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: const AspectRatio(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Base UI PAY",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: appColor(context).useScheme.primary,
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: const AspectRatio(
                  aspectRatio: 16 / 9,
                ),
              ),
            ),
          ),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: kToolbarHeight * 2,
            ),
          ),
        ],
      ),
    );
  }
}
