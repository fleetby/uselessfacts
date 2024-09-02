// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $UselessfactsTableTable extends UselessfactsTable
    with TableInfo<$UselessfactsTableTable, UselessfactsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UselessfactsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _remoteIdMeta =
      const VerificationMeta('remoteId');
  @override
  late final GeneratedColumn<String> remoteId = GeneratedColumn<String>(
      'remote_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _textContentMeta =
      const VerificationMeta('textContent');
  @override
  late final GeneratedColumn<String> textContent = GeneratedColumn<String>(
      'text_content', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceMeta = const VerificationMeta('source');
  @override
  late final GeneratedColumn<String> source = GeneratedColumn<String>(
      'source', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _sourceUrlMeta =
      const VerificationMeta('sourceUrl');
  @override
  late final GeneratedColumn<String> sourceUrl = GeneratedColumn<String>(
      'source_url', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _languageMeta =
      const VerificationMeta('language');
  @override
  late final GeneratedColumn<String> language = GeneratedColumn<String>(
      'language', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _permalinkMeta =
      const VerificationMeta('permalink');
  @override
  late final GeneratedColumn<String> permalink = GeneratedColumn<String>(
      'permalink', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _savedAtMeta =
      const VerificationMeta('savedAt');
  @override
  late final GeneratedColumn<DateTime> savedAt = GeneratedColumn<DateTime>(
      'saved_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      clientDefault: () => DateTime.now());
  @override
  List<GeneratedColumn> get $columns => [
        id,
        remoteId,
        textContent,
        source,
        sourceUrl,
        language,
        permalink,
        savedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'uselessfacts_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<UselessfactsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('remote_id')) {
      context.handle(_remoteIdMeta,
          remoteId.isAcceptableOrUnknown(data['remote_id']!, _remoteIdMeta));
    } else if (isInserting) {
      context.missing(_remoteIdMeta);
    }
    if (data.containsKey('text_content')) {
      context.handle(
          _textContentMeta,
          textContent.isAcceptableOrUnknown(
              data['text_content']!, _textContentMeta));
    } else if (isInserting) {
      context.missing(_textContentMeta);
    }
    if (data.containsKey('source')) {
      context.handle(_sourceMeta,
          source.isAcceptableOrUnknown(data['source']!, _sourceMeta));
    } else if (isInserting) {
      context.missing(_sourceMeta);
    }
    if (data.containsKey('source_url')) {
      context.handle(_sourceUrlMeta,
          sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta));
    } else if (isInserting) {
      context.missing(_sourceUrlMeta);
    }
    if (data.containsKey('language')) {
      context.handle(_languageMeta,
          language.isAcceptableOrUnknown(data['language']!, _languageMeta));
    } else if (isInserting) {
      context.missing(_languageMeta);
    }
    if (data.containsKey('permalink')) {
      context.handle(_permalinkMeta,
          permalink.isAcceptableOrUnknown(data['permalink']!, _permalinkMeta));
    } else if (isInserting) {
      context.missing(_permalinkMeta);
    }
    if (data.containsKey('saved_at')) {
      context.handle(_savedAtMeta,
          savedAt.isAcceptableOrUnknown(data['saved_at']!, _savedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  UselessfactsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UselessfactsTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      remoteId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}remote_id'])!,
      textContent: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}text_content'])!,
      source: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source'])!,
      sourceUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}source_url'])!,
      language: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}language'])!,
      permalink: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}permalink'])!,
      savedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}saved_at'])!,
    );
  }

  @override
  $UselessfactsTableTable createAlias(String alias) {
    return $UselessfactsTableTable(attachedDatabase, alias);
  }
}

class UselessfactsTableData extends DataClass
    implements Insertable<UselessfactsTableData> {
  final int id;
  final String remoteId;
  final String textContent;
  final String source;
  final String sourceUrl;
  final String language;
  final String permalink;
  final DateTime savedAt;
  const UselessfactsTableData(
      {required this.id,
      required this.remoteId,
      required this.textContent,
      required this.source,
      required this.sourceUrl,
      required this.language,
      required this.permalink,
      required this.savedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['remote_id'] = Variable<String>(remoteId);
    map['text_content'] = Variable<String>(textContent);
    map['source'] = Variable<String>(source);
    map['source_url'] = Variable<String>(sourceUrl);
    map['language'] = Variable<String>(language);
    map['permalink'] = Variable<String>(permalink);
    map['saved_at'] = Variable<DateTime>(savedAt);
    return map;
  }

  UselessfactsTableCompanion toCompanion(bool nullToAbsent) {
    return UselessfactsTableCompanion(
      id: Value(id),
      remoteId: Value(remoteId),
      textContent: Value(textContent),
      source: Value(source),
      sourceUrl: Value(sourceUrl),
      language: Value(language),
      permalink: Value(permalink),
      savedAt: Value(savedAt),
    );
  }

  factory UselessfactsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UselessfactsTableData(
      id: serializer.fromJson<int>(json['id']),
      remoteId: serializer.fromJson<String>(json['remoteId']),
      textContent: serializer.fromJson<String>(json['textContent']),
      source: serializer.fromJson<String>(json['source']),
      sourceUrl: serializer.fromJson<String>(json['sourceUrl']),
      language: serializer.fromJson<String>(json['language']),
      permalink: serializer.fromJson<String>(json['permalink']),
      savedAt: serializer.fromJson<DateTime>(json['savedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'remoteId': serializer.toJson<String>(remoteId),
      'textContent': serializer.toJson<String>(textContent),
      'source': serializer.toJson<String>(source),
      'sourceUrl': serializer.toJson<String>(sourceUrl),
      'language': serializer.toJson<String>(language),
      'permalink': serializer.toJson<String>(permalink),
      'savedAt': serializer.toJson<DateTime>(savedAt),
    };
  }

  UselessfactsTableData copyWith(
          {int? id,
          String? remoteId,
          String? textContent,
          String? source,
          String? sourceUrl,
          String? language,
          String? permalink,
          DateTime? savedAt}) =>
      UselessfactsTableData(
        id: id ?? this.id,
        remoteId: remoteId ?? this.remoteId,
        textContent: textContent ?? this.textContent,
        source: source ?? this.source,
        sourceUrl: sourceUrl ?? this.sourceUrl,
        language: language ?? this.language,
        permalink: permalink ?? this.permalink,
        savedAt: savedAt ?? this.savedAt,
      );
  UselessfactsTableData copyWithCompanion(UselessfactsTableCompanion data) {
    return UselessfactsTableData(
      id: data.id.present ? data.id.value : this.id,
      remoteId: data.remoteId.present ? data.remoteId.value : this.remoteId,
      textContent:
          data.textContent.present ? data.textContent.value : this.textContent,
      source: data.source.present ? data.source.value : this.source,
      sourceUrl: data.sourceUrl.present ? data.sourceUrl.value : this.sourceUrl,
      language: data.language.present ? data.language.value : this.language,
      permalink: data.permalink.present ? data.permalink.value : this.permalink,
      savedAt: data.savedAt.present ? data.savedAt.value : this.savedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UselessfactsTableData(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('textContent: $textContent, ')
          ..write('source: $source, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('language: $language, ')
          ..write('permalink: $permalink, ')
          ..write('savedAt: $savedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, remoteId, textContent, source, sourceUrl,
      language, permalink, savedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UselessfactsTableData &&
          other.id == this.id &&
          other.remoteId == this.remoteId &&
          other.textContent == this.textContent &&
          other.source == this.source &&
          other.sourceUrl == this.sourceUrl &&
          other.language == this.language &&
          other.permalink == this.permalink &&
          other.savedAt == this.savedAt);
}

class UselessfactsTableCompanion
    extends UpdateCompanion<UselessfactsTableData> {
  final Value<int> id;
  final Value<String> remoteId;
  final Value<String> textContent;
  final Value<String> source;
  final Value<String> sourceUrl;
  final Value<String> language;
  final Value<String> permalink;
  final Value<DateTime> savedAt;
  const UselessfactsTableCompanion({
    this.id = const Value.absent(),
    this.remoteId = const Value.absent(),
    this.textContent = const Value.absent(),
    this.source = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.language = const Value.absent(),
    this.permalink = const Value.absent(),
    this.savedAt = const Value.absent(),
  });
  UselessfactsTableCompanion.insert({
    this.id = const Value.absent(),
    required String remoteId,
    required String textContent,
    required String source,
    required String sourceUrl,
    required String language,
    required String permalink,
    this.savedAt = const Value.absent(),
  })  : remoteId = Value(remoteId),
        textContent = Value(textContent),
        source = Value(source),
        sourceUrl = Value(sourceUrl),
        language = Value(language),
        permalink = Value(permalink);
  static Insertable<UselessfactsTableData> custom({
    Expression<int>? id,
    Expression<String>? remoteId,
    Expression<String>? textContent,
    Expression<String>? source,
    Expression<String>? sourceUrl,
    Expression<String>? language,
    Expression<String>? permalink,
    Expression<DateTime>? savedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (remoteId != null) 'remote_id': remoteId,
      if (textContent != null) 'text_content': textContent,
      if (source != null) 'source': source,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (language != null) 'language': language,
      if (permalink != null) 'permalink': permalink,
      if (savedAt != null) 'saved_at': savedAt,
    });
  }

  UselessfactsTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? remoteId,
      Value<String>? textContent,
      Value<String>? source,
      Value<String>? sourceUrl,
      Value<String>? language,
      Value<String>? permalink,
      Value<DateTime>? savedAt}) {
    return UselessfactsTableCompanion(
      id: id ?? this.id,
      remoteId: remoteId ?? this.remoteId,
      textContent: textContent ?? this.textContent,
      source: source ?? this.source,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      language: language ?? this.language,
      permalink: permalink ?? this.permalink,
      savedAt: savedAt ?? this.savedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (remoteId.present) {
      map['remote_id'] = Variable<String>(remoteId.value);
    }
    if (textContent.present) {
      map['text_content'] = Variable<String>(textContent.value);
    }
    if (source.present) {
      map['source'] = Variable<String>(source.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (language.present) {
      map['language'] = Variable<String>(language.value);
    }
    if (permalink.present) {
      map['permalink'] = Variable<String>(permalink.value);
    }
    if (savedAt.present) {
      map['saved_at'] = Variable<DateTime>(savedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UselessfactsTableCompanion(')
          ..write('id: $id, ')
          ..write('remoteId: $remoteId, ')
          ..write('textContent: $textContent, ')
          ..write('source: $source, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('language: $language, ')
          ..write('permalink: $permalink, ')
          ..write('savedAt: $savedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $UselessfactsTableTable uselessfactsTable =
      $UselessfactsTableTable(this);
  late final Index remoteIdIndex = Index('remoteIdIndex',
      'CREATE INDEX remoteIdIndex ON uselessfacts_table (remote_id)');
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [uselessfactsTable, remoteIdIndex];
}

typedef $$UselessfactsTableTableCreateCompanionBuilder
    = UselessfactsTableCompanion Function({
  Value<int> id,
  required String remoteId,
  required String textContent,
  required String source,
  required String sourceUrl,
  required String language,
  required String permalink,
  Value<DateTime> savedAt,
});
typedef $$UselessfactsTableTableUpdateCompanionBuilder
    = UselessfactsTableCompanion Function({
  Value<int> id,
  Value<String> remoteId,
  Value<String> textContent,
  Value<String> source,
  Value<String> sourceUrl,
  Value<String> language,
  Value<String> permalink,
  Value<DateTime> savedAt,
});

class $$UselessfactsTableTableFilterComposer
    extends FilterComposer<_$AppDb, $UselessfactsTableTable> {
  $$UselessfactsTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get remoteId => $state.composableBuilder(
      column: $state.table.remoteId,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get textContent => $state.composableBuilder(
      column: $state.table.textContent,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get source => $state.composableBuilder(
      column: $state.table.source,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get sourceUrl => $state.composableBuilder(
      column: $state.table.sourceUrl,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get permalink => $state.composableBuilder(
      column: $state.table.permalink,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get savedAt => $state.composableBuilder(
      column: $state.table.savedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$UselessfactsTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $UselessfactsTableTable> {
  $$UselessfactsTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get remoteId => $state.composableBuilder(
      column: $state.table.remoteId,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get textContent => $state.composableBuilder(
      column: $state.table.textContent,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get source => $state.composableBuilder(
      column: $state.table.source,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get sourceUrl => $state.composableBuilder(
      column: $state.table.sourceUrl,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get language => $state.composableBuilder(
      column: $state.table.language,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get permalink => $state.composableBuilder(
      column: $state.table.permalink,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get savedAt => $state.composableBuilder(
      column: $state.table.savedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UselessfactsTableTableTableManager extends RootTableManager<
    _$AppDb,
    $UselessfactsTableTable,
    UselessfactsTableData,
    $$UselessfactsTableTableFilterComposer,
    $$UselessfactsTableTableOrderingComposer,
    $$UselessfactsTableTableCreateCompanionBuilder,
    $$UselessfactsTableTableUpdateCompanionBuilder,
    (
      UselessfactsTableData,
      BaseReferences<_$AppDb, $UselessfactsTableTable, UselessfactsTableData>
    ),
    UselessfactsTableData,
    PrefetchHooks Function()> {
  $$UselessfactsTableTableTableManager(
      _$AppDb db, $UselessfactsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UselessfactsTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$UselessfactsTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> remoteId = const Value.absent(),
            Value<String> textContent = const Value.absent(),
            Value<String> source = const Value.absent(),
            Value<String> sourceUrl = const Value.absent(),
            Value<String> language = const Value.absent(),
            Value<String> permalink = const Value.absent(),
            Value<DateTime> savedAt = const Value.absent(),
          }) =>
              UselessfactsTableCompanion(
            id: id,
            remoteId: remoteId,
            textContent: textContent,
            source: source,
            sourceUrl: sourceUrl,
            language: language,
            permalink: permalink,
            savedAt: savedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String remoteId,
            required String textContent,
            required String source,
            required String sourceUrl,
            required String language,
            required String permalink,
            Value<DateTime> savedAt = const Value.absent(),
          }) =>
              UselessfactsTableCompanion.insert(
            id: id,
            remoteId: remoteId,
            textContent: textContent,
            source: source,
            sourceUrl: sourceUrl,
            language: language,
            permalink: permalink,
            savedAt: savedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$UselessfactsTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $UselessfactsTableTable,
    UselessfactsTableData,
    $$UselessfactsTableTableFilterComposer,
    $$UselessfactsTableTableOrderingComposer,
    $$UselessfactsTableTableCreateCompanionBuilder,
    $$UselessfactsTableTableUpdateCompanionBuilder,
    (
      UselessfactsTableData,
      BaseReferences<_$AppDb, $UselessfactsTableTable, UselessfactsTableData>
    ),
    UselessfactsTableData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$UselessfactsTableTableTableManager get uselessfactsTable =>
      $$UselessfactsTableTableTableManager(_db, _db.uselessfactsTable);
}
