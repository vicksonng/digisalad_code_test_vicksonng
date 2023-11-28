import 'package:digisalad_code_test_vicksonng/styles/unified_size.dart';
import 'package:flutter/material.dart';

class UnifiedPadding {
  const UnifiedPadding._();

  static const EdgeInsets allMd = EdgeInsets.symmetric(
    horizontal: mdSize,
    vertical: mdSize,
  );

  static const EdgeInsets horizontalLg = EdgeInsets.symmetric(
    horizontal: lgSize,
  );

  static const EdgeInsets horizontalMd = EdgeInsets.symmetric(
    horizontal: mdSize,
  );

  static const EdgeInsets pagePadding = EdgeInsets.symmetric(
    horizontal: lgSize,
    vertical: mdSize,
  );

  static const EdgeInsets verticalMd = EdgeInsets.symmetric(
    vertical: mdSize,
  );
}
