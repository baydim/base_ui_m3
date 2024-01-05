import 'package:base_ui_m3/app/routes/app_pages.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widget/widget_button_search.dart';
import 'widget/widget_city_round.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BASE UI M3"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Badge(
                label: Text("2"),
                child: Icon(
                  Icons.notifications_rounded,
                ),
              ))
        ],
      ),
      body: CustomScrollView(
        slivers: [
          WidgetButtonSearch(),
          WidgetCityRound(),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Text(
                "Untuk Anda",
                style: appFont(context).titleMedium,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 200,
              width: Get.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  for (var i = 0; i < 10; i++)
                    Row(
                      children: [
                        IntrinsicWidth(
                          child: Card(
                            elevation: 0,
                            color:
                                appColor(context).useScheme.secondaryContainer,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(10),
                              onTap: () {},
                              child: Column(
                                children: [
                                  Text(
                                    "dsfsfdsfss",
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 0,
                        ),
                      ],
                    ),
                  SizedBox(
                    width: 20,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
