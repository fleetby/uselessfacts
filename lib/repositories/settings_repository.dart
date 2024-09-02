import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'settings_repository.g.dart';

abstract interface class SettingsRepository {
  Future<bool> getMusicEnabled();
  Future<void> setMusicEnabled(bool enabled);
}

class _SettingsRepositoryImpl implements SettingsRepository {
  static const _musicEnabledKey = 'music_enabled';

  final _sharedPreferencesAsync = SharedPreferencesAsync();

  @override
  Future<bool> getMusicEnabled() => _sharedPreferencesAsync
      .getBool(_musicEnabledKey)
      .then((enabled) => enabled ?? true);

  @override
  Future<void> setMusicEnabled(bool enabled) =>
      _sharedPreferencesAsync.setBool(_musicEnabledKey, enabled);
}

@Riverpod(keepAlive: true)
SettingsRepository settingsRepository(SettingsRepositoryRef ref) =>
    _SettingsRepositoryImpl();
