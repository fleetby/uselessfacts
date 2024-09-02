import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ErrorPlaceholder extends ConsumerWidget {
  const ErrorPlaceholder({
    required this.title,
    required this.body,
    required this.actionText,
    required this.onActionPressed,
    super.key,
  });

  final String title;
  final String body;
  final String actionText;
  final VoidCallback onActionPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Icon(Icons.error_outline),
        const SizedBox(height: 2),
        Text(
          title,
          style: theme.textTheme.titleMedium,
        ),
        Text(
          body,
          style: theme.textTheme.bodyMedium,
        ),
        const SizedBox(height: 8),
        FilledButton(
          onPressed: onActionPressed,
          child: Text(actionText),
        ),
      ],
    );
  }
}
