import 'package:digisalad_code_test_vicksonng/styles/unified_gap.dart';
import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:flutter/material.dart';

class IconMessage extends StatelessWidget {
  const IconMessage({
    super.key,
    required this.iconData,
    required this.message,
  });

  final IconData iconData;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          iconData,
          size: xlSize,
        ),
        UnifiedGap.sm,
        Text(
          message,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ],
    );
  }
}
