import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/notification_controller.dart';

class NotificationView extends GetView<NotificationController> {
  const NotificationView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('Notifikasi'),
        centerTitle: true,
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
                hintText: "Cari Notifikasi...",
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
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              elevation: 0,
              color: i != 0
                  ? appColor(context).useScheme.background
                  : appColor(context).useScheme.inversePrimary.withOpacity(0.2),
              child: InkWell(
                borderRadius: BorderRadius.circular(8),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(
                                  Icons.notifications_rounded,
                                  size: 20,
                                  color: appColor(context).useScheme.primary,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "Pemesanan",
                                  style: appFont(context).bodyMedium?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                ),
                                const Spacer(),
                                Opacity(
                                  opacity: 0.5,
                                  child: Text(
                                    "Sen, 24 Jun 2004 ~ 14:00",
                                    style: appFont(context).labelSmall,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Opacity(
                              opacity: 0.5,
                              child: Text(
                                "Terima kasih telah memilih [Nama Hotel] untuk menginap Anda. Kami senang dapat memberitahu Anda bahwa pemesanan kamar Anda telah berhasil dikonfirmasi.",
                                style: appFont(context).labelSmall?.copyWith(),
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Opacity(
                        opacity: i == 0 ? 1 : 0,
                        child: CircleAvatar(
                          radius: 4,
                          backgroundColor: appColor(context).useScheme.primary,
                        ),
                      )
                    ],
                  ),
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
