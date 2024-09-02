import 'package:flutter/material.dart';
import 'package:uselessfacts/constants/app_destination.dart';
import 'package:uselessfacts/dialogs/about_app_dialog.dart';

class AppNavigationDrawer extends StatelessWidget {
  const AppNavigationDrawer({
    required this.destination,
    required this.onDestinationChanged,
    super.key,
  });

  final AppDestination destination;
  final ValueChanged<AppDestination> onDestinationChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return NavigationDrawer(
      backgroundColor: Colors.black87,
      selectedIndex: switch (destination) {
        AppDestination.randomUselessfact => 0,
        AppDestination.savedUselessfacts => 1,
      },
      onDestinationSelected: (value) {
        switch (value) {
          case 0:
            onDestinationChanged(AppDestination.randomUselessfact);
            Scaffold.of(context).closeDrawer();
          case 1:
            onDestinationChanged(AppDestination.savedUselessfacts);
            Scaffold.of(context).closeDrawer();
          case 2:
            showAboutAppDialog(context);
        }
      },
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              FloatingActionButton(
                onPressed: () => Scaffold.of(context).closeDrawer(),
                child: const Icon(Icons.menu_open),
              ),
              Text(
                'Uselessfacts',
                style: theme.textTheme.titleLarge,
              ),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          label: Text('Random'),
          icon: Icon(Icons.shuffle),
        ),
        const NavigationDrawerDestination(
          label: Text('Favorite'),
          icon: Icon(Icons.favorite),
        ),
        const NavigationDrawerDestination(
          label: Text('About'),
          icon: Icon(Icons.info_outline),
        ),
      ],
    );
  }
}
