import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../theme/app_theme.dart';
import '../controllers/base_payment_controller.dart';
import 'widget/widget_saldo_payment.dart';

class BasePaymentView extends GetView<BasePaymentController> {
  const BasePaymentView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Base Payment'),
        titleTextStyle: appTheme(context).appBarTheme.titleTextStyle,
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          const WidgetSaldoPayment(),
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
                "Promo untuk kamu",
                style: appFont(context).titleMedium?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    for (var i = 0; i < 5; i++)
                      Card(
                        elevation: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: appSize(context).width / 2,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.payments_rounded,
                                      color:
                                          appColor(context).useScheme.primary,
                                      size: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      "Top Up Joss ke $i",
                                      style: appFont(context)
                                          .labelMedium
                                          ?.copyWith(
                                            fontWeight: FontWeight.bold,
                                            color: appColor(context)
                                                .useScheme
                                                .primary,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  "Dapatkan bonus 3x lipat bulanan dengan minimal top-up Rp300.000 !!!",
                                  style: appFont(context).labelSmall?.copyWith(
                                        color:
                                            appColor(context).useScheme.primary,
                                      ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
