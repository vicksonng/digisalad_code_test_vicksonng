import 'package:digisalad_code_test_vicksonng/routes/route_handler.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  const ErrorDialog({
    super.key,
    this.message,
  });

  final String? message;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('error.title').tr(),
      content: Text(
        message ?? 'error.unknown'.tr(),
      ),
      actions: [
        TextButton(
          onPressed: navigateBack,
          child: const Text('action.ok').tr(),
        ),
      ],
    );
  }
}
