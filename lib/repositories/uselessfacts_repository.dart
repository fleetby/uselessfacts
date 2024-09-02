import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uselessfacts/dtos/uselessfact_dto.dart';
import 'package:uselessfacts/models/uselessfact.dart';
import 'package:uselessfacts/persistence/app_db.dart';
import 'package:uselessfacts/mappers/uselessfact_mapper.dart';

part 'uselessfacts_repository.g.dart';

abstract interface class UselessfactsRepository {
  Future<Uselessfact> getRandomUselessfact();
  Future<Uselessfact> getTodayUselessfact();
  Future<Uselessfact?> getUselessfactById(String id);
  Stream<List<Uselessfact>> getSavedUselessfacts();
  Future<void> saveUselessfact(String id);
  Future<void> unsaveUselessfact(String id);
  Future<bool> isUselessfactSaved(String id);
}

class _UselessfactsRepositoryImpl implements UselessfactsRepository {
  final _db = AppDb();
  final _dio = Dio(BaseOptions(baseUrl: 'https://uselessfacts.jsph.pl'));

  @override
  Future<Uselessfact> getRandomUselessfact() => _dio
      .get('/api/v2/facts/random')
      .then((value) => UselessfactDto.fromJson(value.data))
      .then(_toModel);

  @override
  Future<Uselessfact?> getUselessfactById(String id) async {
    try {
      final response = await _dio.get('/api/v2/facts/$id');
      return _toModel(UselessfactDto.fromJson(response.data));
    } on DioException {
      return null;
    }
  }

  @override
  Future<Uselessfact> getTodayUselessfact() => _dio
      .get('/api/v2/facts/today')
      .then((value) => UselessfactDto.fromJson(value.data))
      .then(_toModel);

  @override
  Stream<List<Uselessfact>> getSavedUselessfacts() =>
      _db.managers.uselessfactsTable
          .orderBy((o) => o.savedAt.desc())
          .watch()
          .map((e) => e.map((e) => e.toModel()).toList());

  @override
  Future<void> saveUselessfact(String id) async {
    final uselessfact = await getUselessfactById(id);

    if (uselessfact == null) {
      throw StateError("Uselessfact doesn't exist.");
    }

    await _db.managers.uselessfactsTable.create(
      (f) => f(
        language: uselessfact.language,
        permalink: uselessfact.permalink,
        remoteId: uselessfact.id,
        source: uselessfact.source,
        sourceUrl: uselessfact.sourceUrl,
        textContent: uselessfact.text,
      ),
      mode: InsertMode.insertOrReplace,
    );
  }

  @override
  Future<void> unsaveUselessfact(String id) => _db.managers.uselessfactsTable
      .filter((f) => f.remoteId.equals(id))
      .delete();

  @override
  Future<bool> isUselessfactSaved(String id) => _db.managers.uselessfactsTable
      .filter((f) => f.remoteId.equals(id))
      .exists();

  Future<Uselessfact> _toModel(UselessfactDto dto) async => dto.toModel(
        saved: await _db.managers.uselessfactsTable
            .filter((f) => f.remoteId(dto.id))
            .exists(),
      );
}

@Riverpod(keepAlive: true)
UselessfactsRepository uselessfactsRepository(UselessfactsRepositoryRef ref) =>
    _UselessfactsRepositoryImpl();
