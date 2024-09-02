import 'package:animated_list_plus/animated_list_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:uselessfacts/providers/uselessfacts_providers.dart';
import 'package:uselessfacts/widgets/error_placeholder.dart';
import 'package:uselessfacts/widgets/hyperlink_text.dart';
import 'package:uselessfacts/widgets/preloader.dart';

class SavedUselessfactsDestination extends ConsumerWidget {
  const SavedUselessfactsDestination({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final savedUselessfacts = ref.watch(savedUselessfactsProvider);
    return AnimatedSwitcher(
      duration: kThemeChangeDuration,
      child: savedUselessfacts.when(
        data: (data) {
          if (data.isEmpty) {
            return const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.sentiment_dissatisfied),
                SizedBox(height: 2),
                Text('No saved useless facts...')
              ],
            );
          }

          return ImplicitlyAnimatedList(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            areItemsTheSame: (oldItem, newItem) => oldItem.id == newItem.id,
            items: data,
            removeDuration: kThemeChangeDuration,
            insertDuration: kThemeChangeDuration,
            updateDuration: Duration.zero,
            itemBuilder: (context, animation, uselessfact, index) {
              final curvedAnimation =
                  CurvedAnimation(parent: animation, curve: Curves.easeInOut);
              return SizeTransition(
                sizeFactor: curvedAnimation,
                child: FadeTransition(
                  opacity: curvedAnimation,
                  child: Card.outlined(
                    child: ListTile(
                      key: ValueKey(uselessfact.id),
                      title: Text(uselessfact.text),
                      subtitle: HyperlinkText(uselessfact.sourceUrl),
                      titleAlignment: ListTileTitleAlignment.top,
                      trailing: IconButton(
                        onPressed: () => ref
                            .read(savedUselessfactsProvider.notifier)
                            .unsave(index),
                        icon: const Icon(Icons.clear),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
        error: (error, stackTrace) => ErrorPlaceholder(
          title: 'Could not load database',
          body: 'Please, try again',
          actionText: 'Retry',
          onActionPressed: () => ref.invalidate(savedUselessfactsProvider),
        ),
        loading: () => const Center(child: Preloader()),
      ),
    );
  }
}
