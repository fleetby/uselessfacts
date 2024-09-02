import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:uselessfacts/persistence/tables/uselessfacts_table.dart';

part 'app_db.g.dart';

@DriftDatabase(tables: [UselessfactsTable])
class AppDb extends _$AppDb {
  AppDb()
      : super(
          driftDatabase(
            name: 'uselessfacts',
            web: DriftWebOptions(
              sqlite3Wasm: Uri.parse('sqlite3.wasm'),
              driftWorker: Uri.parse('drift_worker.js'),
            ),
          ),
        );

  @override
  int get schemaVersion => 1;
}
