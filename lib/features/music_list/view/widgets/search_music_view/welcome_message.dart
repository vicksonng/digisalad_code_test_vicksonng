import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/widgets/icon_message.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({
    super.key,
    this.name,
  });

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconMessage(
          iconData: Icons.flutter_dash_rounded,
          message: 'view.musicList.welcome'.tr(),
        ),
        UnifiedGap.md,
        Text(
          'view.musicList.instruction'.tr(),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    );
  }
}
