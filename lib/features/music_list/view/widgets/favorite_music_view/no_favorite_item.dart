import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/widgets/icon_message.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class NoFavoriteItem extends StatelessWidget {
  const NoFavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        UnifiedGap.lg,
        IconMessage(
          iconData: Icons.heart_broken_rounded,
          message: 'view.musicList.emptyList'.tr(),
        )
      ],
    );
  }
}
