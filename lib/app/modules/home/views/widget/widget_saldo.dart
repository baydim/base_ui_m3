import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../theme/app_theme.dart';

class WidgetSaldo extends StatelessWidget {
  const WidgetSaldo({super.key});

  @override
  Widget build(BuildContext context) {
    var random = Random();
    var minUang = 1000;
    var maxUang = 90000000;

    // Menghasilkan nilai acak antara minUang dan maxUang
    var randomUang = minUang + random.nextInt(maxUang - minUang + 1);
    var randomCoin = 1 + random.nextInt(1000 - 1 + 1);

    var numberFormat = NumberFormat.currency(
      locale: 'id_ID',
      symbol: "",
      decimalDigits: 0,
    );

    return SliverToBoxAdapter(
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        elevation: 0,
        color: appColor(context).useThemeData.primaryColor,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.payments_rounded,
                              color: Colors.white,
                              size: 15,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "Saldo anda",
                              style: appFont(context).labelSmall?.copyWith(
                                    color: Colors.white,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rp${numberFormat.format(randomUang)}",
                          style: appFont(context).bodyLarge?.copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                        Text(
                          "${numberFormat.format(randomCoin)} CoinBase",
                          style: appFont(context).labelSmall?.copyWith(
                                color: Colors.white.withOpacity(0.8),
                              ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.send_outlined,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.add_circle_outline,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 8,
                        horizontal: 8,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          8,
                        ),
                        color: appColor(context).useScheme.secondaryContainer,
                      ),
                      child: Icon(
                        Icons.qr_code_sharp,
                        size: 15,
                        color: appColor(context).useScheme.primary,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
