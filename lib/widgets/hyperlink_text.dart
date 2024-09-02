import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HyperlinkText extends StatelessWidget {
  const HyperlinkText(
    this.url, {
    super.key,
  });

  final String url;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () => launchUrlString(url),
        child: Text(
          url,
          style: TextStyle(
            color: theme.colorScheme.primary,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
