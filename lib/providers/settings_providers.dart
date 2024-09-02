import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uselessfacts/repositories/settings_repository.dart';

part 'settings_providers.g.dart';

@Riverpod(keepAlive: true)
class MusicEnabled extends _$MusicEnabled {
  @override
  Future<bool> build() {
    final settingsRepository = ref.watch(settingsRepositoryProvider);
    return settingsRepository.getMusicEnabled();
  }

  Future<void> toggle() async {
    final settingsRepository = ref.read(settingsRepositoryProvider);
    await settingsRepository.setMusicEnabled(!await future);
    ref.invalidateSelf();
  }
}
