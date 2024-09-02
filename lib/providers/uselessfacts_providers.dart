import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uselessfacts/models/uselessfact.dart';
import 'package:uselessfacts/repositories/uselessfacts_repository.dart';

part 'uselessfacts_providers.g.dart';

@Riverpod(keepAlive: true)
Future<Uselessfact> randomUselessfact(RandomUselessfactRef ref) =>
    ref.read(uselessfactsRepositoryProvider).getRandomUselessfact();
  
@Riverpod(keepAlive: true)
class SavedUselessfacts extends _$SavedUselessfacts {
  @override
  Stream<List<Uselessfact>> build() =>
      ref.read(uselessfactsRepositoryProvider).getSavedUselessfacts();

  Future<void> unsave(int index) async {
    final uselessfacts = await future;
    final uselessfactsRepository = ref.read(uselessfactsRepositoryProvider);
    var uselessfactByIndexId = uselessfacts[index].id;
    await uselessfactsRepository.unsaveUselessfact(uselessfactByIndexId);

    final currentRandomUselessfactId =
        ref.read(randomUselessfactProvider).valueOrNull?.id;
    if (currentRandomUselessfactId == uselessfactByIndexId) {
      ref.invalidate(isRandomUselessfactSavedProvider);
    }
  }
}

@Riverpod(keepAlive: true)
class IsRandomUselessfactSaved extends _$IsRandomUselessfactSaved {
  @override
  Future<bool> build() async {
    final uselessfactsRepository = ref.watch(uselessfactsRepositoryProvider);
    final randomUselessfact = await ref.watch(randomUselessfactProvider.future);
    return uselessfactsRepository.isUselessfactSaved(randomUselessfact.id);
  }

  Future<void> toggle() async {
    final uselessfactsRepository = ref.read(uselessfactsRepositoryProvider);
    final randomUselessfact = await ref.read(randomUselessfactProvider.future);
    if (await future) {
      await uselessfactsRepository.unsaveUselessfact(randomUselessfact.id);
    } else {
      await uselessfactsRepository.saveUselessfact(randomUselessfact.id);
    }
    ref.invalidateSelf();
  }
}
