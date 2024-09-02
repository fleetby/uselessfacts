import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uselessfacts/providers/uselessfacts_providers.dart';
import 'package:uselessfacts/widgets/error_placeholder.dart';
import 'package:uselessfacts/widgets/preloader.dart';

class RandomUselessfactDestination extends ConsumerStatefulWidget {
  const RandomUselessfactDestination({super.key});

  @override
  ConsumerState<RandomUselessfactDestination> createState() => _RandomUselessfactDestinationState();
}

class _RandomUselessfactDestinationState extends ConsumerState<RandomUselessfactDestination> {
  final _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.requestFocus();
  }

@override
  Widget build(BuildContext context) {
    final randomUselessfact = ref.watch(randomUselessfactProvider);
    return KeyboardListener(
      focusNode: _focusNode,
      onKeyEvent: (value) {
        if (value is KeyUpEvent &&
            value.logicalKey == LogicalKeyboardKey.space) {
          ref.invalidate(randomUselessfactProvider);
        }
      },
      child: GestureDetector(
        onTap: () => ref.invalidate(randomUselessfactProvider),
        child: Center(
          child: SingleChildScrollView(
            child: AnimatedSwitcher(
              duration: kThemeChangeDuration,
              transitionBuilder: (child, animation) {
                return FadeTransition(
                  opacity: animation,
                  child: child,
                );
              },
              child: Padding(
                key: ValueKey(
                  randomUselessfact.hasValue
                      ? randomUselessfact.value!.id
                      : randomUselessfact,
                ),
                padding: const EdgeInsets.all(16),
                child: randomUselessfact.when(
                  data: (data) => _UselessfactText(data.text),
                  loading: () => const Preloader(),
                  error: (error, stackTrace) => ErrorPlaceholder(
                    title: 'Could not load data',
                    body: 'Please, check your internet connection',
                    actionText: 'Retry',
                    onActionPressed: () =>
                        ref.invalidate(randomUselessfactProvider),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
}

class _UselessfactText extends StatelessWidget {
  const _UselessfactText(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
        fontSize: 24,
        color: Colors.white,
        shadows: [
          Shadow(
            color: Colors.white,
            offset: Offset(1, 1),
            blurRadius: 24,
          ),
        ],
      ),
    );
  }
}
