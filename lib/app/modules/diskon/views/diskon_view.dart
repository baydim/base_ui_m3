import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../../home/views/widget/widget_base_card.dart';
import '../controllers/diskon_controller.dart';

class DiskonView extends GetView<DiskonController> {
  const DiskonView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diskon'),
        centerTitle: true,
      ),
      body: ListView(
        children: const [
          WidgetBaseCardSecondary(
            child: FadeInImage(
              image: NetworkImage(
                "https://th.bing.com/th/id/OIG.ez4AqOa6xASISU2SSAEP?w=1024&h=1024&rs=1&pid=ImgDetMain",
              ),
              placeholder: AssetImage(
                "assets/images/peace.png",
              ),
              fit: BoxFit.cover,
            ),
          ),
          WidgetBaseCardSecondary(
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
          WidgetBaseCardSecondary(
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
          WidgetBaseCardSecondary(
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
          SizedBox(
            height: kToolbarHeight * 2,
          ),
        ],
      ),
    );
  }
}
