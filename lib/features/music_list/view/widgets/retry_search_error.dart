import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class RetrySearchError extends StatelessWidget {
  const RetrySearchError({
    super.key,
    required this.onRetry,
  });

  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text('error.unknown').tr(),
        IconButton(
          icon: const Icon(
            Icons.refresh_rounded,
          ),
          onPressed: onRetry,
        ),
      ],
    );
  }
}
