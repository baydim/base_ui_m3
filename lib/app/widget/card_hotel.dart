
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../theme/app_theme.dart';
import '../util/price_room_util.dart';
import '../util/room_image_util.dart';

class CardHotel extends StatelessWidget {
  const CardHotel({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IntrinsicHeight(
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            elevation: 0,
            color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Container(
                        width: Get.width / 1.8,
                        height: Get.width / 3,
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
                            image: NetworkImage(roomRandomUtil()),
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Nama Hotel / Penginapan",
                              style: appFont(context).bodySmall?.copyWith(),
                            ),
                            Text(
                              "Rp${price()}",
                              style: appFont(context).bodyLarge?.copyWith(
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
                                style: appFont(context).labelSmall?.copyWith(),
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
                      onTap: () {},
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
    );
  }
}
