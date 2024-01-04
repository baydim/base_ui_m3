import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

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
          SliverAppBar(
            flexibleSpace: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: SearchAnchor.bar(
                viewElevation: 0,
                barElevation: MaterialStatePropertyAll(1),
                isFullScreen: true,
                suggestionsBuilder:
                    (BuildContext context, SearchController controller) {
                  return [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 20,
                          ),
                          for (var i = 0; i < 6; i++)
                            Row(
                              children: [
                                ActionChip.elevated(
                                  label: Text(
                                    "Chip ke $i",
                                  ),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                              ],
                            ),
                          const SizedBox(
                            width: 15,
                          ),
                        ],
                      ),
                    ),
                    for (var i = 0; i < 20; i++)
                      ListTile(
                        onTap: () {},
                        title: const Text("Product Si"),
                      ),
                  ];
                },
              ),
            ),
            toolbarHeight: kTextTabBarHeight + 5,
          ),
          // SliverToBoxAdapter(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(
          //       horizontal: 20,
          //     ),
          //     child: SizedBox(
          //       height: 45,
          //       child: SearchAnchor.bar(
          //         viewElevation: 0,
          //         barElevation: MaterialStatePropertyAll(1),
          //         isFullScreen: true,
          //         suggestionsBuilder:
          //             (BuildContext context, SearchController controller) {
          //           return [
          //             SingleChildScrollView(
          //               scrollDirection: Axis.horizontal,
          //               child: Row(
          //                 children: [
          //                   const SizedBox(
          //                     width: 20,
          //                   ),
          //                   for (var i = 0; i < 6; i++)
          //                     Row(
          //                       children: [
          //                         ActionChip.elevated(
          //                           label: Text(
          //                             "Chip ke $i",
          //                           ),
          //                         ),
          //                         const SizedBox(
          //                           width: 5,
          //                         ),
          //                       ],
          //                     ),
          //                   const SizedBox(
          //                     width: 15,
          //                   ),
          //                 ],
          //               ),
          //             ),
          //             for (var i = 0; i < 20; i++)
          //               ListTile(
          //                 onTap: () {},
          //                 title: const Text("Product Si"),
          //               ),
          //           ];
          //         },
          //       ),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
