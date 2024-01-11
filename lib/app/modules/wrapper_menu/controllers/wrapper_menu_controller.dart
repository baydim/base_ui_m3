import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/services/service_shared.dart';
import '../../../util/random/room_image_util.dart';

class WrapperMenuController extends GetxController {
  final indexPage = 0.obs;
  final pageController = PageController().obs;

  final isDark = false.obs;
  final size = const Size(475.0, 812.0).obs;
  final isWeb = kIsWeb.obs;

  funcToDark({required bool useDark}) async {
    isDark.value = !isDark.value;
    await ServiceShared.setDark(isDark: isDark.value);
    funcInitial();
  }

  funcInitial() async {
    isDark.value = await ServiceShared.getDark();
    funcShowBanner();
  }

  funcShowBanner() async {
    if (Get.isDialogOpen == true) {
      Get.back();
    }
    Future.delayed(
      1.seconds,
      () {
        Get.dialog(
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 2,
              sigmaY: 2,
            ),
            child: Dialog(
              backgroundColor: Colors.transparent,
              elevation: 0,
              shadowColor: Colors.transparent,
              child: IntrinsicHeight(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      FadeInImage(
                        image: NetworkImage(
                          promoRandomUtil(),
                        ),
                        placeholder: const AssetImage(
                          "assets/images/peace.png",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                      Positioned(
                        child: Material(
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: () {
                              Get.back();
                            },
                          ),
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: IconButton(
                          onPressed: () {
                            Get.back();
                          },
                          icon: const Icon(
                            Icons.cancel_rounded,
                            color: Colors.red,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void onInit() {
    funcInitial();

    super.onInit();
  }
}
