import 'package:base_ui_m3/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../theme/app_theme.dart';
import '../util/random/alamat_random_util.dart';
import '../util/random/price_room_util.dart';
import '../util/random/room_image_util.dart';

class CardHotel extends StatelessWidget {
  const CardHotel({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
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
                        width: size.width / 1.8,
                        height: size.width / 3,
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
                              randomNameHotelUtil(),
                              style: appFont(context).bodySmall?.copyWith(),
                            ),
                            Text(
                              "Rp${priceRandomUtil()}",
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
                                getKotaFromAlamatUtil(
                                  randomAlamatUtil(),
                                ),
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
    );
  }
}
