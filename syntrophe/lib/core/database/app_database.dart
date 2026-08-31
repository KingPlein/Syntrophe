import 'package:drift/drift.dart';

import 'dart:io';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:sqlite3/sqlite3.dart';
import 'package:sqlite3_flutter_libs/sqlite3_flutter_libs.dart';

part 'app_database.g.dart';

@DataClassName('Verse')
class Verses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get book => text()();
  IntColumn get chapter => integer()();
  IntColumn get verse => integer()();
  TextColumn get text => text()();
  TextColumn get translation => text()();
}

@DataClassName('Note')
class Notes extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get content => text()();
  TextColumn get type => text()();
  TextColumn get linkedVerses => text()(); // Store as JSON string
  TextColumn get linkedSermonId => text().nullable()();
  TextColumn get tags => text()(); // Store as JSON string
  DateTimeColumn get createdAt => dateTime()();
  DateTimeColumn get updatedAt => dateTime()();
  BoolColumn get isPinned => boolean().withDefault(const Constant(false))();
  TextColumn get colorLabel => text().withDefault(const Constant('none'))();

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Alarm')
class Alarms extends Table {
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get time => dateTime()();
  TextColumn get repeatDays => text()(); // e.g. "0,1,2,3,4,5,6"
  TextColumn get label => text()();
  TextColumn get sound => text()();
  BoolColumn get isActive => boolean().withDefault(const Constant(true))();
}

@DataClassName('Sermon')
class Sermons extends Table {
  TextColumn get id => text()();
  TextColumn get title => text()();
  TextColumn get speaker => text()();
  TextColumn get church => text()();
  TextColumn get scripture => text()();
  IntColumn get durationSeconds => integer()();
  TextColumn get type => text()();
  TextColumn get sourceUrl => text()();
  TextColumn get thumbnailUrl => text()();
  DateTimeColumn get datePreached => dateTime()();
  BoolColumn get isFavorite => boolean().withDefault(const Constant(false))();
  BoolColumn get isDownloaded => boolean().withDefault(const Constant(false))();
  TextColumn get localPath => text().nullable()();
  IntColumn get progressSeconds => integer().withDefault(const Constant(0))();
  TextColumn get notes => text()(); // Store as JSON string

  @override
  Set<Column> get primaryKey => {id};
}

@DataClassName('Transcript')
class Transcripts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get rawText => text()();
  TextColumn get editedText => text()();
}

@DataClassName('Highlight')
class Highlights extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get verseRef => text()();
  TextColumn get color => text()();
  DateTimeColumn get createdAt => dateTime()();
}

@DataClassName('ReadingProgress')
class ReadingProgresses extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get lastReadPosition => text()();
  TextColumn get planProgress => text()();
}

@DataClassName('Setting')
class Settings extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get theme => text().withDefault(const Constant('system'))();
  IntColumn get fontSize => integer().withDefault(const Constant(16))();
  TextColumn get defaultTranslation => text().withDefault(const Constant('KJV'))();
  BoolColumn get notificationsEnabled => boolean().withDefault(const Constant(true))();
}

@DriftDatabase(tables: [
  Verses,
  Notes,
  Alarms,
  Sermons,
  Transcripts,
  Highlights,
  ReadingProgresses,
  Settings
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));

    if (Platform.isAndroid) {
      await applyWorkaroundToOpenSqlite3OnOldAndroidVersions();
    }

    final cachebase = (await getTemporaryDirectory()).path;
    sqlite3.tempDirectory = cachebase;

    return NativeDatabase.createInBackground(file);
  });
}
