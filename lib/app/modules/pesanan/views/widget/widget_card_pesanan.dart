import 'package:flutter/material.dart';
import '../../../../theme/app_theme.dart';
import '../../../../util/random/alamat_random_util.dart';
import '../../../../util/random/price_room_util.dart';
import '../../../../util/random/room_image_util.dart';

class WidgetCardPesanan extends StatelessWidget {
  const WidgetCardPesanan({super.key, required this.isWait});
  final bool isWait;

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        elevation: 0,
        color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
        child: Stack(
          children: [
            Column(
              children: [
                Expanded(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 4,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: AspectRatio(
                            aspectRatio: 1,
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
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                randomNameHotelUtil(),
                                style: appFont(context).labelSmall?.copyWith(),
                              ),
                              Text(
                                "Rp${priceRandomUtil()}",
                                style: appFont(context).bodyLarge?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.person_outline,
                                        size: 15,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2",
                                        style: appFont(context)
                                            .labelSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.date_range_outlined,
                                        size: 15,
                                      ),
                                      const SizedBox(
                                        width: 5,
                                      ),
                                      Text(
                                        "2 Hari",
                                        style: appFont(context)
                                            .labelSmall
                                            ?.copyWith(
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const Spacer(),
                              if (isWait)
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.history_rounded,
                                      size: 15,
                                      color: appColor(context).useScheme.error,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Menunggu Pembayaran",
                                      style:
                                          appFont(context).labelSmall?.copyWith(
                                                color: appColor(context)
                                                    .useScheme
                                                    .error,
                                              ),
                                    ),
                                  ],
                                )
                              else
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.done_all_rounded,
                                      size: 15,
                                      color:
                                          appColor(context).useScheme.primary,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Terkonfirmasi",
                                      style:
                                          appFont(context).labelSmall?.copyWith(
                                                color: appColor(context)
                                                    .useScheme
                                                    .primary,
                                              ),
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: appColor(context).useScheme.primaryContainer,
                      borderRadius: const BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                        bottomStart: Radius.circular(10),
                      )),
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.date_range_outlined,
                            size: 20,
                            color: appColor(context).useScheme.primary,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sen, 26 Okt",
                                    style:
                                        appFont(context).labelSmall?.copyWith(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "14:00",
                                      style: appFont(context)
                                          .labelSmall
                                          ?.copyWith(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                          const Spacer(),
                          Icon(
                            Icons.arrow_forward_rounded,
                            size: 20,
                            color: appColor(context).useScheme.primary,
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Sen, 26 Okt",
                                    style:
                                        appFont(context).labelSmall?.copyWith(
                                              color: appColor(context)
                                                  .useScheme
                                                  .primary,
                                            ),
                                  ),
                                  Opacity(
                                    opacity: 0.5,
                                    child: Text(
                                      "12:00",
                                      style: appFont(context)
                                          .labelSmall
                                          ?.copyWith(),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        "+ 10 CoinBase",
                        style: appFont(context).labelSmall?.copyWith(
                              color: appColor(context).useScheme.inverseSurface,
                              fontSize: 10,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned.fill(
              child: Material(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                color: Colors.transparent,
                child: InkWell(
                  borderRadius: BorderRadius.circular(
                    10,
                  ),
                  onTap: () {},
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
