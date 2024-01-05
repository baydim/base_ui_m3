import 'package:flutter/material.dart';

import '../../../../theme/app_theme.dart';

class WidgetBaseCard extends StatelessWidget {
  const WidgetBaseCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        color: appColor(context).useScheme.primary,
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5,
        ),
        child: InkWell(
          borderRadius: BorderRadius.circular(8),
          onTap: () {},
          child: const AspectRatio(
            aspectRatio: 16 / 9,
          ),
        ),
      ),
    );
  }
}
