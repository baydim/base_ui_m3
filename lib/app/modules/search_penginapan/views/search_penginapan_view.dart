import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
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
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
