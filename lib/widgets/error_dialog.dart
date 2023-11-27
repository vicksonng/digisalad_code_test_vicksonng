import 'package:digisalad_code_test_vicksonng/config/messages.dart';
import 'package:digisalad_code_test_vicksonng/routes/route_handler.dart';
import 'package:flutter/material.dart';

class ErrorDialog extends StatelessWidget {
  final String message;

  const ErrorDialog({
    super.key,
    this.message = Messages.errorUnknown,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(Messages.error),
      content: Text(message),
      actions: const [
        TextButton(
          onPressed: navigateBack,
          child: Text(Messages.ok),
        ),
      ],
    );
  }
}
