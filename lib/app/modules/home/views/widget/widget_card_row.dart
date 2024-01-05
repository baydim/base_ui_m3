import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/app_theme.dart';

class WidgetCardRow extends StatelessWidget {
  const WidgetCardRow({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: Get.width,
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
                                    height: Get.width / 3,
                                    decoration: BoxDecoration(
                                      color:
                                          appColor(context).useScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                        8,
                                      ),
                                      child: Image.asset(
                                        "assets/images/_98205cc4-2cdf-4ab9-809a-d66c75dbf890.jpeg",
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  )),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(
                                    10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Nama Hotel / Penginapan",
                                        style: appFont(context)
                                            .bodySmall
                                            ?.copyWith(),
                                      ),
                                      Text(
                                        "Rp140.000",
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
                                          "Jalan Lokasi Hotel",
                                          style: appFont(context)
                                              .bodySmall
                                              ?.copyWith(),
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
                width: 10,
              ),
              FloatingActionButton(
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
    );
  }
}
