import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:just_audio/just_audio.dart';
import 'package:uselessfacts/constants/app_destination.dart';
import 'package:uselessfacts/providers/settings_providers.dart';
import 'package:uselessfacts/providers/uselessfacts_providers.dart';
import 'package:uselessfacts/styles/app_theme.dart';
import 'package:uselessfacts/destinations/random_uselessfact_destination.dart';
import 'package:uselessfacts/destinations/saved_uselessfacts_destination.dart';
import 'package:uselessfacts/widgets/app_navigation_drawer.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const ProviderScope(child: App()));
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: const Home(),
    );
  }
}

class Home extends ConsumerStatefulWidget {
  const Home({super.key});

  @override
  ConsumerState<Home> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  final _player = AudioPlayer();
  var _destination = AppDestination.randomUselessfact;

  @override
  void initState() {
    super.initState();
    _player
        .setAsset('assets/starlight_harmonies.mp3', preload: true)
        .then((_) => _player.setLoopMode(LoopMode.one));
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      musicEnabledProvider,
      (previous, next) => next.whenData(
        (musicEnabled) => musicEnabled ? _player.play() : _player.pause(),
      ),
    );

    return Scaffold(
      drawer: AppNavigationDrawer(
        destination: _destination,
        onDestinationChanged: _changeDestination,
      ),
      body: SafeArea(
        child: Column(
          children: [
            const _TopBar(),
            Expanded(
              child: ConstrainedBox(
                constraints: BoxConstraints.loose(const Size.fromWidth(400)),
                child: switch (_destination) {
                  AppDestination.randomUselessfact =>
                    const RandomUselessfactDestination(),
                  AppDestination.savedUselessfacts =>
                    const SavedUselessfactsDestination(),
                },
              ),
            ),
            if (_destination == AppDestination.randomUselessfact)
              const _BottomBar(),
          ],
        ),
      ),
    );
  }

  void _changeDestination(AppDestination destination) {
    return setState(() {
      _destination = destination;
    });
  }

  @override
  void dispose() {
    _player.dispose();
    super.dispose();
  }
}

class _TopBar extends ConsumerWidget {
  const _TopBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final musicEnabled = ref.watch(musicEnabledProvider);
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () => Scaffold.of(context).openDrawer(),
            child: const Icon(Icons.menu),
          ),
          AnimatedSwitcher(
            duration: kThemeChangeDuration,
            transitionBuilder: (child, animation) => FadeTransition(
              opacity: animation,
              child: child,
            ),
            child: FloatingActionButton(
              key: ValueKey(musicEnabled.value ?? true),
              onPressed: () => ref.read(musicEnabledProvider.notifier).toggle(),
              child: musicEnabled.value ?? true
                  ? const Icon(Icons.volume_up)
                  : const Icon(Icons.volume_off),
            ),
          ),
        ],
      ),
    );
  }
}

class _BottomBar extends ConsumerWidget {
  const _BottomBar();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isRandomUselessfactSaved =
        ref.watch(isRandomUselessfactSavedProvider);
    return Padding(
      padding: const EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          FloatingActionButton(
            onPressed: () =>
                ref.read(isRandomUselessfactSavedProvider.notifier).toggle(),
            child: AnimatedSwitcher(
              duration: kThemeChangeDuration,
              child: KeyedSubtree(
                key: ValueKey(isRandomUselessfactSaved.valueOrNull ?? false),
                child: isRandomUselessfactSaved.valueOrNull ?? false
                    ? const Icon(Icons.favorite)
                    : const Icon(Icons.favorite_border),
              ),
            ),
          ),
          FloatingActionButton(
            backgroundColor: Colors.white.withOpacity(0.1),
            onPressed: () => ref.invalidate(randomUselessfactProvider),
            child: const Icon(Icons.keyboard_arrow_right),
          ),
        ],
      ),
    );
  }
}
