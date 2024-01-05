import 'package:base_ui_m3/app/modules/home/views/widget/widget_diskon.dart';
import 'package:base_ui_m3/app/modules/home/views/widget/widget_saldo.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widget/widget_button_search.dart';
import 'widget/widget_card_row.dart';
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
          const WidgetSaldo(),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          const WidgetButtonSearch(),
          const WidgetCityRound(),
          const SliverToBoxAdapter(
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
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
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
                "Diskon dekat kamu",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetBaseCard(),

          ///
          ///
          ///
          const SliverToBoxAdapter(
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
                "Pesan Lagi",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(),

          ///
          ///
          ///

          const SliverToBoxAdapter(
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
                "Baru dilihat",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetCardRow(),

          ///
          ///
          ///

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
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
                "Premium nampol",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetBaseCard(),

          ///
          ///
          ///
          ///
          const SliverToBoxAdapter(
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
                "Base UI PAY",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          WidgetBaseCard(),

          const SliverToBoxAdapter(
            child: SizedBox(
              height: kToolbarHeight * 2,
            ),
          ),
        ],
      ),
    );
  }
}
