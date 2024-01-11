import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../../../util/random/room_image_util.dart';
import '../controllers/search_penginapan_controller.dart';

class SearchPenginapanView extends GetView<SearchPenginapanController> {
  const SearchPenginapanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('Cari Penginapan'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            elevation: 0,
            color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                20,
                20,
                20,
                10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Pilih Tanggal",
                    style: appFont(context).bodyMedium?.copyWith(
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          color: appColor(context).useScheme.primaryContainer,
                          borderRadius: BorderRadius.circular(8),
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Sen, 26 Okt",
                                      style:
                                          appFont(context).bodySmall?.copyWith(
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
                                          appFont(context).bodySmall?.copyWith(
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
                            onTap: () {
                              showDateRangePicker(
                                context: context,
                                firstDate: DateTime.now(),
                                lastDate: DateTime(
                                  DateTime.now().year,
                                  DateTime.now().month + 3,
                                ),
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      Expanded(
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
                            hintText: "Cari Lokasi...",
                            leading: Icon(
                              Icons.location_on_rounded,
                              color: appColor(context).useScheme.primary,
                              size: 20,
                            ),
                            elevation: const MaterialStatePropertyAll(0),
                            backgroundColor: MaterialStatePropertyAll(
                              appColor(context)
                                  .useScheme
                                  .inversePrimary
                                  .withOpacity(0.2),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton.small(
                        elevation: 0,
                        heroTag: "1",
                        onPressed: () {},
                        child: Icon(
                          Icons.map_rounded,
                          color: appColor(context).useScheme.primary,
                          size: 20,
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      FloatingActionButton.small(
                        elevation: 0,
                        heroTag: "2",
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return BackdropFilter(
                                filter: ImageFilter.blur(
                                  sigmaX: 2,
                                  sigmaY: 2,
                                ),
                                child: CupertinoAlertDialog(
                                  title: const Text("Izin Lokasi"),
                                  content: const Text(
                                    "Dengan memberikan izin akses lokasi, kami dapat menampilkan hotel dan penginapan terdekat untuk anda.",
                                  ),
                                  actions: [
                                    CupertinoDialogAction(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Kembali",
                                        style: appFont(context).bodySmall,
                                      ),
                                    ),
                                    CupertinoDialogAction(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        "Izinkan",
                                        style: appFont(context).bodySmall,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        child: Icon(
                          Icons.my_location_outlined,
                          color: appColor(context).useScheme.primary,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Card(
            elevation: 0,
            color: appColor(context).useScheme.inversePrimary.withOpacity(0.2),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                8,
              ),
            ),
            child: GridView.count(
              padding: const EdgeInsetsDirectional.symmetric(
                  horizontal: 10, vertical: 10),
              shrinkWrap: true,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                for (var i in randomLocationResort())
                  Card(
                    elevation: 0,
                    child: Stack(
                      children: [
                        Positioned.fill(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              8,
                            ),
                            child: FadeInImage(
                              image: NetworkImage(
                                i["image"] as String,
                              ),
                              placeholder: const AssetImage(
                                "assets/images/peace.png",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              color:
                                  appColor(context).useScheme.primaryContainer,
                              borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(8),
                                bottomRight: Radius.circular(8),
                              ),
                            ),
                            child: Text(
                              i["nama"] as String,
                              style: appFont(context).bodySmall?.copyWith(
                                    color: appColor(context).useScheme.primary,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
