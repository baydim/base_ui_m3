import 'package:base_ui_m3/app/modules/home/views/widget/widget_base_card.dart';
import 'package:base_ui_m3/app/modules/home/views/widget/widget_saldo.dart';
import 'package:base_ui_m3/app/routes/app_pages.dart';
import 'package:base_ui_m3/app/theme/app_theme.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import 'widget/widget_button_search.dart';
import 'widget/widget_card_row.dart';
import 'widget/widget_city_round.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  HomeController controller = Get.put(HomeController());

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        title: const Text("BASE UI M3"),
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
          const WidgetCardRow(),

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
          const WidgetBaseCard(
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
          const WidgetCardRow(),

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
          const WidgetCardRow(),

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
          const WidgetBaseCard(
            child: FadeInImage(
              image: NetworkImage(
                "https://th.bing.com/th/id/OIG.HaTwF4tamiGpeIImqJyN?w=1024&h=1024&rs=1&pid=ImgDetMain",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),

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

          const WidgetBaseCard(
            child: FadeInImage(
              image: NetworkImage(
                "https://th.bing.com/th/id/OIG.JtYANL_5rmLdPwsSikrF?pid=ImgGn",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),

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
