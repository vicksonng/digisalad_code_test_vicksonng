import 'package:digisalad_code_test_vicksonng/widgets/error_dialog.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void unfocusAllNodes(BuildContext context) {
  FocusScope.of(context).unfocus();
}

void showErrorDialog(String message) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    Get.dialog(
      ErrorDialog(
        message: message,
      ),
    );
  });
}

Future<void> changeLocale(BuildContext context, Locale locale) async {
  await context.setLocale(locale);
  Get.updateLocale(locale);
}
