import 'package:drift/drift.dart';

@TableIndex(name: 'remoteIdIndex', columns: {#remoteId})
class UselessfactsTable extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get remoteId => text()();
  TextColumn get textContent => text()();
  TextColumn get source => text()();
  TextColumn get sourceUrl => text()();
  TextColumn get language => text()();
  TextColumn get permalink => text()();
  DateTimeColumn get savedAt =>
      dateTime().clientDefault(() => DateTime.now())();
}
