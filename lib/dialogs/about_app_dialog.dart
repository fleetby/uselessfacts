import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:uselessfacts/constants/urls.dart';

Future<void> showAboutAppDialog(BuildContext context) => showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Uselessfacts',
          textAlign: TextAlign.center,
        ),
        scrollable: true,
        content: Column(
          children: [
            Card.outlined(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                title: const Text('GitHub repository'),
                subtitle: const Text(githubRepositoryUrl),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => launchUrlString(githubRepositoryUrl),
              ),
            ),
            Card.outlined(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                title: const Text('Uselessfacts API by jsph.pl'),
                subtitle: const Text(uselessfactsJsphPlUrl),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => launchUrlString(uselessfactsJsphPlUrl),
              ),
            ),
            Card.outlined(
              clipBehavior: Clip.antiAlias,
              child: ListTile(
                title: const Text('Music - Starlight Harmonies by UNIVERSFIELD'),
                subtitle: const Text(musicUrl),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => launchUrlString(musicUrl),
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => showLicensePage(
                context: context, applicationName: 'Uselessfacts'),
            child: const Text('Show licenses', textAlign: TextAlign.end),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close', textAlign: TextAlign.end),
          ),
        ],
      ),
    );
