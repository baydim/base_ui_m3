import 'dart:developer';

import 'package:base_ui_m3/app/routes/app_pages.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../util/random/room_image_util.dart';
import '../../home/views/widget/widget_base_card.dart';
import '../controllers/diskon_controller.dart';

class DiskonView extends GetView<DiskonController> {
  const DiskonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text('Diskon'),
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
          WidgetBaseCardSecondary(
            onTap: () {
              log("JOSS");
              try {
                if (Get.isSnackbarOpen == true) {
                  Get.closeCurrentSnackbar();
                }
                Get.rawSnackbar(
                  icon: Icon(
                    Icons.done_all_rounded,
                    color: Theme.of(context).brightness == Brightness.light
                        ? Colors.white
                        : Colors.black,
                  ),
                  messageText: Text(
                    "Berhasil Claim Kupon",
                    style: appFont(context).bodySmall?.copyWith(
                          color:
                              Theme.of(context).brightness == Brightness.light
                                  ? Colors.white
                                  : Colors.black,
                        ),
                  ),
                  borderRadius: 5,
                  backgroundColor: appColor(context).useScheme.primary,
                  margin: const EdgeInsets.fromLTRB(
                    20,
                    0,
                    20,
                    40,
                  ),
                );
              } catch (e) {
                log(e.toString());
              }
            },
            child: Stack(
              children: [
                Positioned.fill(
                  child: FadeInImage(
                    image: NetworkImage(
                      promoRandomUtil(),
                    ),
                    placeholder: const AssetImage(
                      "assets/images/peace.png",
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 5,
                  right: 10,
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      padding: const MaterialStatePropertyAll(
                        EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 5,
                        ),
                      ),
                      minimumSize: const MaterialStatePropertyAll(
                        Size.zero,
                      ),
                      textStyle: MaterialStatePropertyAll(
                        appFont(context).bodySmall,
                      ),
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.done_all_rounded,
                      size: 20,
                    ),
                    label: const Text("Diambil"),
                  ),
                )
              ],
            ),
          ),
          const WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://th.bing.com/th/id/OIG.ha_F7soBrGuJSyn2Nrd2?pid=ImgGn",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          const WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://th.bing.com/th/id/OIG.9mnSA6r8pzD6hF0NASrP?pid=ImgGn",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          const WidgetBaseCardSecondary(
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
          const SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
