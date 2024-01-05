import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../theme/app_theme.dart';

class WidgetCityRound extends StatelessWidget {
  const WidgetCityRound({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        color: Colors.transparent,
        width: Get.width,
        height: 42.5 * 2.0,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            const SizedBox(
              width: 20,
            ),
            Row(
              children: [
                InkWell(
                  borderRadius: BorderRadius.circular(5),
                  onTap: () {},
                  child: Container(
                    color: Colors.transparent,
                    width: 70,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(
                          height: 5,
                        ),
                        CircleAvatar(
                          radius: 25,
                          child: Icon(
                            Icons.navigation_rounded,
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
                                "Terdekat",
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
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            for (var i = 0; i < 8; i++)
              Row(
                children: [
                  InkWell(
                    borderRadius: BorderRadius.circular(5),
                    onTap: () {},
                    child: Container(
                      color: Colors.transparent,
                      width: 70,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(
                            height: 5,
                          ),
                          CircleAvatar(
                            radius: 25,
                            child: Text(
                              "K$i",
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                child: Text(
                                  "Kota Ke $i",
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
                      ),
                    ),
                  ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                ],
              ),
            const SizedBox(
              width: 20,
            ),
          ],
        ),
      ),
    );
  }
}
