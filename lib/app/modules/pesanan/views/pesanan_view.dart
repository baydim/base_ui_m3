import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../theme/app_theme.dart';
import '../controllers/pesanan_controller.dart';

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
          for (var i = 0; i < 10; i++)
            IntrinsicHeight(
              child: Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 4,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                elevation: 0,
                color:
                    appColor(context).useScheme.inversePrimary.withOpacity(0.2),
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
                                width: Get.width / 3.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(8),
                                  child: const AspectRatio(
                                    aspectRatio: 1,
                                    child: FadeInImage(
                                      image: NetworkImage(
                                        "https://th.bing.com/th/id/OIG.23UClhMw42Uo7ZSE7kDo?pid=ImgGn",
                                      ),
                                      placeholder: AssetImage(
                                        "assets/images/peace.png",
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 10, 10, 0),
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
                                                    .labelMedium,
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
                                                    .labelMedium,
                                              ),
                                            ],
                                          ),
                                        ],
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
                                      ),
                                      const Spacer(),
                                      Align(
                                        alignment: Alignment.centerRight,
                                        child: Container(
                                          alignment: Alignment.centerRight,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Icon(
                                                Icons.done_all_rounded,
                                                size: 15,
                                                color: appColor(context)
                                                    .useScheme
                                                    .primary,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                "Terkonfirmasi",
                                                style: appFont(context)
                                                    .labelMedium
                                                    ?.copyWith(
                                                      color: appColor(context)
                                                          .useScheme
                                                          .primary,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
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
                              color:
                                  appColor(context).useScheme.primaryContainer,
                              borderRadius: const BorderRadiusDirectional.only(
                                bottomEnd: Radius.circular(10),
                                bottomStart: Radius.circular(10),
                              )),
                          padding: const EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: Row(
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sen, 26 Okt",
                                        style: appFont(context)
                                            .bodySmall
                                            ?.copyWith(
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
                                              .bodySmall
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Sen, 26 Okt",
                                        style: appFont(context)
                                            .bodySmall
                                            ?.copyWith(
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
                                              .bodySmall
                                              ?.copyWith(),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
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
            ),
          const SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
