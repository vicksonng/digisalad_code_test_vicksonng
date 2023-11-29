import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    this.actions,
    this.title,
  });

  final List<Widget>? actions;
  final String? title;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title ?? 'appName'.tr(),
        overflow: TextOverflow.ellipsis,
      ),
      titleSpacing: mdSize,
      centerTitle: false,
      actions: actions != null
          ? [
              ...actions!,
              UnifiedGap.md,
            ]
          : null,
    );
  }
}
