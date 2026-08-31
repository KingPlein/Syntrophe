// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $NotesTable extends Notes with TableInfo<$NotesTable, Note> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _contentMeta = const VerificationMeta(
    'content',
  );
  @override
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
    'content',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _linkedVersesMeta = const VerificationMeta(
    'linkedVerses',
  );
  @override
  late final GeneratedColumn<String> linkedVerses = GeneratedColumn<String>(
    'linked_verses',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _linkedSermonIdMeta = const VerificationMeta(
    'linkedSermonId',
  );
  @override
  late final GeneratedColumn<String> linkedSermonId = GeneratedColumn<String>(
    'linked_sermon_id',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _tagsMeta = const VerificationMeta('tags');
  @override
  late final GeneratedColumn<String> tags = GeneratedColumn<String>(
    'tags',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _updatedAtMeta = const VerificationMeta(
    'updatedAt',
  );
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
    'updated_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isPinnedMeta = const VerificationMeta(
    'isPinned',
  );
  @override
  late final GeneratedColumn<bool> isPinned = GeneratedColumn<bool>(
    'is_pinned',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_pinned" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _colorLabelMeta = const VerificationMeta(
    'colorLabel',
  );
  @override
  late final GeneratedColumn<String> colorLabel = GeneratedColumn<String>(
    'color_label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('none'),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    content,
    type,
    linkedVerses,
    linkedSermonId,
    tags,
    createdAt,
    updatedAt,
    isPinned,
    colorLabel,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notes';
  @override
  VerificationContext validateIntegrity(
    Insertable<Note> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(
        _contentMeta,
        content.isAcceptableOrUnknown(data['content']!, _contentMeta),
      );
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('linked_verses')) {
      context.handle(
        _linkedVersesMeta,
        linkedVerses.isAcceptableOrUnknown(
          data['linked_verses']!,
          _linkedVersesMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_linkedVersesMeta);
    }
    if (data.containsKey('linked_sermon_id')) {
      context.handle(
        _linkedSermonIdMeta,
        linkedSermonId.isAcceptableOrUnknown(
          data['linked_sermon_id']!,
          _linkedSermonIdMeta,
        ),
      );
    }
    if (data.containsKey('tags')) {
      context.handle(
        _tagsMeta,
        tags.isAcceptableOrUnknown(data['tags']!, _tagsMeta),
      );
    } else if (isInserting) {
      context.missing(_tagsMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    if (data.containsKey('updated_at')) {
      context.handle(
        _updatedAtMeta,
        updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta),
      );
    } else if (isInserting) {
      context.missing(_updatedAtMeta);
    }
    if (data.containsKey('is_pinned')) {
      context.handle(
        _isPinnedMeta,
        isPinned.isAcceptableOrUnknown(data['is_pinned']!, _isPinnedMeta),
      );
    }
    if (data.containsKey('color_label')) {
      context.handle(
        _colorLabelMeta,
        colorLabel.isAcceptableOrUnknown(data['color_label']!, _colorLabelMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Note map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Note(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      content: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}content'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      linkedVerses: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}linked_verses'],
      )!,
      linkedSermonId: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}linked_sermon_id'],
      ),
      tags: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}tags'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
      updatedAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}updated_at'],
      )!,
      isPinned: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_pinned'],
      )!,
      colorLabel: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color_label'],
      )!,
    );
  }

  @override
  $NotesTable createAlias(String alias) {
    return $NotesTable(attachedDatabase, alias);
  }
}

class Note extends DataClass implements Insertable<Note> {
  final String id;
  final String title;
  final String content;
  final String type;
  final String linkedVerses;
  final String? linkedSermonId;
  final String tags;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool isPinned;
  final String colorLabel;
  const Note({
    required this.id,
    required this.title,
    required this.content,
    required this.type,
    required this.linkedVerses,
    this.linkedSermonId,
    required this.tags,
    required this.createdAt,
    required this.updatedAt,
    required this.isPinned,
    required this.colorLabel,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['type'] = Variable<String>(type);
    map['linked_verses'] = Variable<String>(linkedVerses);
    if (!nullToAbsent || linkedSermonId != null) {
      map['linked_sermon_id'] = Variable<String>(linkedSermonId);
    }
    map['tags'] = Variable<String>(tags);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    map['is_pinned'] = Variable<bool>(isPinned);
    map['color_label'] = Variable<String>(colorLabel);
    return map;
  }

  NotesCompanion toCompanion(bool nullToAbsent) {
    return NotesCompanion(
      id: Value(id),
      title: Value(title),
      content: Value(content),
      type: Value(type),
      linkedVerses: Value(linkedVerses),
      linkedSermonId: linkedSermonId == null && nullToAbsent
          ? const Value.absent()
          : Value(linkedSermonId),
      tags: Value(tags),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
      isPinned: Value(isPinned),
      colorLabel: Value(colorLabel),
    );
  }

  factory Note.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Note(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      type: serializer.fromJson<String>(json['type']),
      linkedVerses: serializer.fromJson<String>(json['linkedVerses']),
      linkedSermonId: serializer.fromJson<String?>(json['linkedSermonId']),
      tags: serializer.fromJson<String>(json['tags']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
      isPinned: serializer.fromJson<bool>(json['isPinned']),
      colorLabel: serializer.fromJson<String>(json['colorLabel']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'type': serializer.toJson<String>(type),
      'linkedVerses': serializer.toJson<String>(linkedVerses),
      'linkedSermonId': serializer.toJson<String?>(linkedSermonId),
      'tags': serializer.toJson<String>(tags),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
      'isPinned': serializer.toJson<bool>(isPinned),
      'colorLabel': serializer.toJson<String>(colorLabel),
    };
  }

  Note copyWith({
    String? id,
    String? title,
    String? content,
    String? type,
    String? linkedVerses,
    Value<String?> linkedSermonId = const Value.absent(),
    String? tags,
    DateTime? createdAt,
    DateTime? updatedAt,
    bool? isPinned,
    String? colorLabel,
  }) => Note(
    id: id ?? this.id,
    title: title ?? this.title,
    content: content ?? this.content,
    type: type ?? this.type,
    linkedVerses: linkedVerses ?? this.linkedVerses,
    linkedSermonId: linkedSermonId.present
        ? linkedSermonId.value
        : this.linkedSermonId,
    tags: tags ?? this.tags,
    createdAt: createdAt ?? this.createdAt,
    updatedAt: updatedAt ?? this.updatedAt,
    isPinned: isPinned ?? this.isPinned,
    colorLabel: colorLabel ?? this.colorLabel,
  );
  Note copyWithCompanion(NotesCompanion data) {
    return Note(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      content: data.content.present ? data.content.value : this.content,
      type: data.type.present ? data.type.value : this.type,
      linkedVerses: data.linkedVerses.present
          ? data.linkedVerses.value
          : this.linkedVerses,
      linkedSermonId: data.linkedSermonId.present
          ? data.linkedSermonId.value
          : this.linkedSermonId,
      tags: data.tags.present ? data.tags.value : this.tags,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      isPinned: data.isPinned.present ? data.isPinned.value : this.isPinned,
      colorLabel: data.colorLabel.present
          ? data.colorLabel.value
          : this.colorLabel,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Note(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('type: $type, ')
          ..write('linkedVerses: $linkedVerses, ')
          ..write('linkedSermonId: $linkedSermonId, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isPinned: $isPinned, ')
          ..write('colorLabel: $colorLabel')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    content,
    type,
    linkedVerses,
    linkedSermonId,
    tags,
    createdAt,
    updatedAt,
    isPinned,
    colorLabel,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Note &&
          other.id == this.id &&
          other.title == this.title &&
          other.content == this.content &&
          other.type == this.type &&
          other.linkedVerses == this.linkedVerses &&
          other.linkedSermonId == this.linkedSermonId &&
          other.tags == this.tags &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.isPinned == this.isPinned &&
          other.colorLabel == this.colorLabel);
}

class NotesCompanion extends UpdateCompanion<Note> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> content;
  final Value<String> type;
  final Value<String> linkedVerses;
  final Value<String?> linkedSermonId;
  final Value<String> tags;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<bool> isPinned;
  final Value<String> colorLabel;
  final Value<int> rowid;
  const NotesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.type = const Value.absent(),
    this.linkedVerses = const Value.absent(),
    this.linkedSermonId = const Value.absent(),
    this.tags = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.isPinned = const Value.absent(),
    this.colorLabel = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotesCompanion.insert({
    required String id,
    required String title,
    required String content,
    required String type,
    required String linkedVerses,
    this.linkedSermonId = const Value.absent(),
    required String tags,
    required DateTime createdAt,
    required DateTime updatedAt,
    this.isPinned = const Value.absent(),
    this.colorLabel = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       content = Value(content),
       type = Value(type),
       linkedVerses = Value(linkedVerses),
       tags = Value(tags),
       createdAt = Value(createdAt),
       updatedAt = Value(updatedAt);
  static Insertable<Note> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? type,
    Expression<String>? linkedVerses,
    Expression<String>? linkedSermonId,
    Expression<String>? tags,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<bool>? isPinned,
    Expression<String>? colorLabel,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (type != null) 'type': type,
      if (linkedVerses != null) 'linked_verses': linkedVerses,
      if (linkedSermonId != null) 'linked_sermon_id': linkedSermonId,
      if (tags != null) 'tags': tags,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (isPinned != null) 'is_pinned': isPinned,
      if (colorLabel != null) 'color_label': colorLabel,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotesCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? content,
    Value<String>? type,
    Value<String>? linkedVerses,
    Value<String?>? linkedSermonId,
    Value<String>? tags,
    Value<DateTime>? createdAt,
    Value<DateTime>? updatedAt,
    Value<bool>? isPinned,
    Value<String>? colorLabel,
    Value<int>? rowid,
  }) {
    return NotesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      content: content ?? this.content,
      type: type ?? this.type,
      linkedVerses: linkedVerses ?? this.linkedVerses,
      linkedSermonId: linkedSermonId ?? this.linkedSermonId,
      tags: tags ?? this.tags,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      isPinned: isPinned ?? this.isPinned,
      colorLabel: colorLabel ?? this.colorLabel,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (linkedVerses.present) {
      map['linked_verses'] = Variable<String>(linkedVerses.value);
    }
    if (linkedSermonId.present) {
      map['linked_sermon_id'] = Variable<String>(linkedSermonId.value);
    }
    if (tags.present) {
      map['tags'] = Variable<String>(tags.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (isPinned.present) {
      map['is_pinned'] = Variable<bool>(isPinned.value);
    }
    if (colorLabel.present) {
      map['color_label'] = Variable<String>(colorLabel.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('type: $type, ')
          ..write('linkedVerses: $linkedVerses, ')
          ..write('linkedSermonId: $linkedSermonId, ')
          ..write('tags: $tags, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('isPinned: $isPinned, ')
          ..write('colorLabel: $colorLabel, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AlarmsTable extends Alarms with TableInfo<$AlarmsTable, Alarm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlarmsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<DateTime> time = GeneratedColumn<DateTime>(
    'time',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _repeatDaysMeta = const VerificationMeta(
    'repeatDays',
  );
  @override
  late final GeneratedColumn<String> repeatDays = GeneratedColumn<String>(
    'repeat_days',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _labelMeta = const VerificationMeta('label');
  @override
  late final GeneratedColumn<String> label = GeneratedColumn<String>(
    'label',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _soundMeta = const VerificationMeta('sound');
  @override
  late final GeneratedColumn<String> sound = GeneratedColumn<String>(
    'sound',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isActiveMeta = const VerificationMeta(
    'isActive',
  );
  @override
  late final GeneratedColumn<bool> isActive = GeneratedColumn<bool>(
    'is_active',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_active" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    time,
    repeatDays,
    label,
    sound,
    isActive,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'alarms';
  @override
  VerificationContext validateIntegrity(
    Insertable<Alarm> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('time')) {
      context.handle(
        _timeMeta,
        time.isAcceptableOrUnknown(data['time']!, _timeMeta),
      );
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('repeat_days')) {
      context.handle(
        _repeatDaysMeta,
        repeatDays.isAcceptableOrUnknown(data['repeat_days']!, _repeatDaysMeta),
      );
    } else if (isInserting) {
      context.missing(_repeatDaysMeta);
    }
    if (data.containsKey('label')) {
      context.handle(
        _labelMeta,
        label.isAcceptableOrUnknown(data['label']!, _labelMeta),
      );
    } else if (isInserting) {
      context.missing(_labelMeta);
    }
    if (data.containsKey('sound')) {
      context.handle(
        _soundMeta,
        sound.isAcceptableOrUnknown(data['sound']!, _soundMeta),
      );
    } else if (isInserting) {
      context.missing(_soundMeta);
    }
    if (data.containsKey('is_active')) {
      context.handle(
        _isActiveMeta,
        isActive.isAcceptableOrUnknown(data['is_active']!, _isActiveMeta),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Alarm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Alarm(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      time: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}time'],
      )!,
      repeatDays: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}repeat_days'],
      )!,
      label: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}label'],
      )!,
      sound: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}sound'],
      )!,
      isActive: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_active'],
      )!,
    );
  }

  @override
  $AlarmsTable createAlias(String alias) {
    return $AlarmsTable(attachedDatabase, alias);
  }
}

class Alarm extends DataClass implements Insertable<Alarm> {
  final int id;
  final DateTime time;
  final String repeatDays;
  final String label;
  final String sound;
  final bool isActive;
  const Alarm({
    required this.id,
    required this.time,
    required this.repeatDays,
    required this.label,
    required this.sound,
    required this.isActive,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['time'] = Variable<DateTime>(time);
    map['repeat_days'] = Variable<String>(repeatDays);
    map['label'] = Variable<String>(label);
    map['sound'] = Variable<String>(sound);
    map['is_active'] = Variable<bool>(isActive);
    return map;
  }

  AlarmsCompanion toCompanion(bool nullToAbsent) {
    return AlarmsCompanion(
      id: Value(id),
      time: Value(time),
      repeatDays: Value(repeatDays),
      label: Value(label),
      sound: Value(sound),
      isActive: Value(isActive),
    );
  }

  factory Alarm.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Alarm(
      id: serializer.fromJson<int>(json['id']),
      time: serializer.fromJson<DateTime>(json['time']),
      repeatDays: serializer.fromJson<String>(json['repeatDays']),
      label: serializer.fromJson<String>(json['label']),
      sound: serializer.fromJson<String>(json['sound']),
      isActive: serializer.fromJson<bool>(json['isActive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'time': serializer.toJson<DateTime>(time),
      'repeatDays': serializer.toJson<String>(repeatDays),
      'label': serializer.toJson<String>(label),
      'sound': serializer.toJson<String>(sound),
      'isActive': serializer.toJson<bool>(isActive),
    };
  }

  Alarm copyWith({
    int? id,
    DateTime? time,
    String? repeatDays,
    String? label,
    String? sound,
    bool? isActive,
  }) => Alarm(
    id: id ?? this.id,
    time: time ?? this.time,
    repeatDays: repeatDays ?? this.repeatDays,
    label: label ?? this.label,
    sound: sound ?? this.sound,
    isActive: isActive ?? this.isActive,
  );
  Alarm copyWithCompanion(AlarmsCompanion data) {
    return Alarm(
      id: data.id.present ? data.id.value : this.id,
      time: data.time.present ? data.time.value : this.time,
      repeatDays: data.repeatDays.present
          ? data.repeatDays.value
          : this.repeatDays,
      label: data.label.present ? data.label.value : this.label,
      sound: data.sound.present ? data.sound.value : this.sound,
      isActive: data.isActive.present ? data.isActive.value : this.isActive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Alarm(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('repeatDays: $repeatDays, ')
          ..write('label: $label, ')
          ..write('sound: $sound, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, time, repeatDays, label, sound, isActive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Alarm &&
          other.id == this.id &&
          other.time == this.time &&
          other.repeatDays == this.repeatDays &&
          other.label == this.label &&
          other.sound == this.sound &&
          other.isActive == this.isActive);
}

class AlarmsCompanion extends UpdateCompanion<Alarm> {
  final Value<int> id;
  final Value<DateTime> time;
  final Value<String> repeatDays;
  final Value<String> label;
  final Value<String> sound;
  final Value<bool> isActive;
  const AlarmsCompanion({
    this.id = const Value.absent(),
    this.time = const Value.absent(),
    this.repeatDays = const Value.absent(),
    this.label = const Value.absent(),
    this.sound = const Value.absent(),
    this.isActive = const Value.absent(),
  });
  AlarmsCompanion.insert({
    this.id = const Value.absent(),
    required DateTime time,
    required String repeatDays,
    required String label,
    required String sound,
    this.isActive = const Value.absent(),
  }) : time = Value(time),
       repeatDays = Value(repeatDays),
       label = Value(label),
       sound = Value(sound);
  static Insertable<Alarm> custom({
    Expression<int>? id,
    Expression<DateTime>? time,
    Expression<String>? repeatDays,
    Expression<String>? label,
    Expression<String>? sound,
    Expression<bool>? isActive,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (time != null) 'time': time,
      if (repeatDays != null) 'repeat_days': repeatDays,
      if (label != null) 'label': label,
      if (sound != null) 'sound': sound,
      if (isActive != null) 'is_active': isActive,
    });
  }

  AlarmsCompanion copyWith({
    Value<int>? id,
    Value<DateTime>? time,
    Value<String>? repeatDays,
    Value<String>? label,
    Value<String>? sound,
    Value<bool>? isActive,
  }) {
    return AlarmsCompanion(
      id: id ?? this.id,
      time: time ?? this.time,
      repeatDays: repeatDays ?? this.repeatDays,
      label: label ?? this.label,
      sound: sound ?? this.sound,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (time.present) {
      map['time'] = Variable<DateTime>(time.value);
    }
    if (repeatDays.present) {
      map['repeat_days'] = Variable<String>(repeatDays.value);
    }
    if (label.present) {
      map['label'] = Variable<String>(label.value);
    }
    if (sound.present) {
      map['sound'] = Variable<String>(sound.value);
    }
    if (isActive.present) {
      map['is_active'] = Variable<bool>(isActive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlarmsCompanion(')
          ..write('id: $id, ')
          ..write('time: $time, ')
          ..write('repeatDays: $repeatDays, ')
          ..write('label: $label, ')
          ..write('sound: $sound, ')
          ..write('isActive: $isActive')
          ..write(')'))
        .toString();
  }
}

class $SermonsTable extends Sermons with TableInfo<$SermonsTable, Sermon> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SermonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
    'id',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
    'title',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _speakerMeta = const VerificationMeta(
    'speaker',
  );
  @override
  late final GeneratedColumn<String> speaker = GeneratedColumn<String>(
    'speaker',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _churchMeta = const VerificationMeta('church');
  @override
  late final GeneratedColumn<String> church = GeneratedColumn<String>(
    'church',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _scriptureMeta = const VerificationMeta(
    'scripture',
  );
  @override
  late final GeneratedColumn<String> scripture = GeneratedColumn<String>(
    'scripture',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _durationSecondsMeta = const VerificationMeta(
    'durationSeconds',
  );
  @override
  late final GeneratedColumn<int> durationSeconds = GeneratedColumn<int>(
    'duration_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
    'type',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _sourceUrlMeta = const VerificationMeta(
    'sourceUrl',
  );
  @override
  late final GeneratedColumn<String> sourceUrl = GeneratedColumn<String>(
    'source_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _thumbnailUrlMeta = const VerificationMeta(
    'thumbnailUrl',
  );
  @override
  late final GeneratedColumn<String> thumbnailUrl = GeneratedColumn<String>(
    'thumbnail_url',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _datePreachedMeta = const VerificationMeta(
    'datePreached',
  );
  @override
  late final GeneratedColumn<DateTime> datePreached = GeneratedColumn<DateTime>(
    'date_preached',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _isFavoriteMeta = const VerificationMeta(
    'isFavorite',
  );
  @override
  late final GeneratedColumn<bool> isFavorite = GeneratedColumn<bool>(
    'is_favorite',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_favorite" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _isDownloadedMeta = const VerificationMeta(
    'isDownloaded',
  );
  @override
  late final GeneratedColumn<bool> isDownloaded = GeneratedColumn<bool>(
    'is_downloaded',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("is_downloaded" IN (0, 1))',
    ),
    defaultValue: const Constant(false),
  );
  static const VerificationMeta _localPathMeta = const VerificationMeta(
    'localPath',
  );
  @override
  late final GeneratedColumn<String> localPath = GeneratedColumn<String>(
    'local_path',
    aliasedName,
    true,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
  );
  static const VerificationMeta _progressSecondsMeta = const VerificationMeta(
    'progressSeconds',
  );
  @override
  late final GeneratedColumn<int> progressSeconds = GeneratedColumn<int>(
    'progress_seconds',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(0),
  );
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
    'notes',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    title,
    speaker,
    church,
    scripture,
    durationSeconds,
    type,
    sourceUrl,
    thumbnailUrl,
    datePreached,
    isFavorite,
    isDownloaded,
    localPath,
    progressSeconds,
    notes,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sermons';
  @override
  VerificationContext validateIntegrity(
    Insertable<Sermon> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta,
        title.isAcceptableOrUnknown(data['title']!, _titleMeta),
      );
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('speaker')) {
      context.handle(
        _speakerMeta,
        speaker.isAcceptableOrUnknown(data['speaker']!, _speakerMeta),
      );
    } else if (isInserting) {
      context.missing(_speakerMeta);
    }
    if (data.containsKey('church')) {
      context.handle(
        _churchMeta,
        church.isAcceptableOrUnknown(data['church']!, _churchMeta),
      );
    } else if (isInserting) {
      context.missing(_churchMeta);
    }
    if (data.containsKey('scripture')) {
      context.handle(
        _scriptureMeta,
        scripture.isAcceptableOrUnknown(data['scripture']!, _scriptureMeta),
      );
    } else if (isInserting) {
      context.missing(_scriptureMeta);
    }
    if (data.containsKey('duration_seconds')) {
      context.handle(
        _durationSecondsMeta,
        durationSeconds.isAcceptableOrUnknown(
          data['duration_seconds']!,
          _durationSecondsMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_durationSecondsMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta,
        type.isAcceptableOrUnknown(data['type']!, _typeMeta),
      );
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('source_url')) {
      context.handle(
        _sourceUrlMeta,
        sourceUrl.isAcceptableOrUnknown(data['source_url']!, _sourceUrlMeta),
      );
    } else if (isInserting) {
      context.missing(_sourceUrlMeta);
    }
    if (data.containsKey('thumbnail_url')) {
      context.handle(
        _thumbnailUrlMeta,
        thumbnailUrl.isAcceptableOrUnknown(
          data['thumbnail_url']!,
          _thumbnailUrlMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_thumbnailUrlMeta);
    }
    if (data.containsKey('date_preached')) {
      context.handle(
        _datePreachedMeta,
        datePreached.isAcceptableOrUnknown(
          data['date_preached']!,
          _datePreachedMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_datePreachedMeta);
    }
    if (data.containsKey('is_favorite')) {
      context.handle(
        _isFavoriteMeta,
        isFavorite.isAcceptableOrUnknown(data['is_favorite']!, _isFavoriteMeta),
      );
    }
    if (data.containsKey('is_downloaded')) {
      context.handle(
        _isDownloadedMeta,
        isDownloaded.isAcceptableOrUnknown(
          data['is_downloaded']!,
          _isDownloadedMeta,
        ),
      );
    }
    if (data.containsKey('local_path')) {
      context.handle(
        _localPathMeta,
        localPath.isAcceptableOrUnknown(data['local_path']!, _localPathMeta),
      );
    }
    if (data.containsKey('progress_seconds')) {
      context.handle(
        _progressSecondsMeta,
        progressSeconds.isAcceptableOrUnknown(
          data['progress_seconds']!,
          _progressSecondsMeta,
        ),
      );
    }
    if (data.containsKey('notes')) {
      context.handle(
        _notesMeta,
        notes.isAcceptableOrUnknown(data['notes']!, _notesMeta),
      );
    } else if (isInserting) {
      context.missing(_notesMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Sermon map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Sermon(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}id'],
      )!,
      title: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}title'],
      )!,
      speaker: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}speaker'],
      )!,
      church: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}church'],
      )!,
      scripture: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}scripture'],
      )!,
      durationSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}duration_seconds'],
      )!,
      type: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}type'],
      )!,
      sourceUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}source_url'],
      )!,
      thumbnailUrl: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}thumbnail_url'],
      )!,
      datePreached: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}date_preached'],
      )!,
      isFavorite: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_favorite'],
      )!,
      isDownloaded: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}is_downloaded'],
      )!,
      localPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}local_path'],
      ),
      progressSeconds: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}progress_seconds'],
      )!,
      notes: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}notes'],
      )!,
    );
  }

  @override
  $SermonsTable createAlias(String alias) {
    return $SermonsTable(attachedDatabase, alias);
  }
}

class Sermon extends DataClass implements Insertable<Sermon> {
  final String id;
  final String title;
  final String speaker;
  final String church;
  final String scripture;
  final int durationSeconds;
  final String type;
  final String sourceUrl;
  final String thumbnailUrl;
  final DateTime datePreached;
  final bool isFavorite;
  final bool isDownloaded;
  final String? localPath;
  final int progressSeconds;
  final String notes;
  const Sermon({
    required this.id,
    required this.title,
    required this.speaker,
    required this.church,
    required this.scripture,
    required this.durationSeconds,
    required this.type,
    required this.sourceUrl,
    required this.thumbnailUrl,
    required this.datePreached,
    required this.isFavorite,
    required this.isDownloaded,
    this.localPath,
    required this.progressSeconds,
    required this.notes,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['title'] = Variable<String>(title);
    map['speaker'] = Variable<String>(speaker);
    map['church'] = Variable<String>(church);
    map['scripture'] = Variable<String>(scripture);
    map['duration_seconds'] = Variable<int>(durationSeconds);
    map['type'] = Variable<String>(type);
    map['source_url'] = Variable<String>(sourceUrl);
    map['thumbnail_url'] = Variable<String>(thumbnailUrl);
    map['date_preached'] = Variable<DateTime>(datePreached);
    map['is_favorite'] = Variable<bool>(isFavorite);
    map['is_downloaded'] = Variable<bool>(isDownloaded);
    if (!nullToAbsent || localPath != null) {
      map['local_path'] = Variable<String>(localPath);
    }
    map['progress_seconds'] = Variable<int>(progressSeconds);
    map['notes'] = Variable<String>(notes);
    return map;
  }

  SermonsCompanion toCompanion(bool nullToAbsent) {
    return SermonsCompanion(
      id: Value(id),
      title: Value(title),
      speaker: Value(speaker),
      church: Value(church),
      scripture: Value(scripture),
      durationSeconds: Value(durationSeconds),
      type: Value(type),
      sourceUrl: Value(sourceUrl),
      thumbnailUrl: Value(thumbnailUrl),
      datePreached: Value(datePreached),
      isFavorite: Value(isFavorite),
      isDownloaded: Value(isDownloaded),
      localPath: localPath == null && nullToAbsent
          ? const Value.absent()
          : Value(localPath),
      progressSeconds: Value(progressSeconds),
      notes: Value(notes),
    );
  }

  factory Sermon.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Sermon(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      speaker: serializer.fromJson<String>(json['speaker']),
      church: serializer.fromJson<String>(json['church']),
      scripture: serializer.fromJson<String>(json['scripture']),
      durationSeconds: serializer.fromJson<int>(json['durationSeconds']),
      type: serializer.fromJson<String>(json['type']),
      sourceUrl: serializer.fromJson<String>(json['sourceUrl']),
      thumbnailUrl: serializer.fromJson<String>(json['thumbnailUrl']),
      datePreached: serializer.fromJson<DateTime>(json['datePreached']),
      isFavorite: serializer.fromJson<bool>(json['isFavorite']),
      isDownloaded: serializer.fromJson<bool>(json['isDownloaded']),
      localPath: serializer.fromJson<String?>(json['localPath']),
      progressSeconds: serializer.fromJson<int>(json['progressSeconds']),
      notes: serializer.fromJson<String>(json['notes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'speaker': serializer.toJson<String>(speaker),
      'church': serializer.toJson<String>(church),
      'scripture': serializer.toJson<String>(scripture),
      'durationSeconds': serializer.toJson<int>(durationSeconds),
      'type': serializer.toJson<String>(type),
      'sourceUrl': serializer.toJson<String>(sourceUrl),
      'thumbnailUrl': serializer.toJson<String>(thumbnailUrl),
      'datePreached': serializer.toJson<DateTime>(datePreached),
      'isFavorite': serializer.toJson<bool>(isFavorite),
      'isDownloaded': serializer.toJson<bool>(isDownloaded),
      'localPath': serializer.toJson<String?>(localPath),
      'progressSeconds': serializer.toJson<int>(progressSeconds),
      'notes': serializer.toJson<String>(notes),
    };
  }

  Sermon copyWith({
    String? id,
    String? title,
    String? speaker,
    String? church,
    String? scripture,
    int? durationSeconds,
    String? type,
    String? sourceUrl,
    String? thumbnailUrl,
    DateTime? datePreached,
    bool? isFavorite,
    bool? isDownloaded,
    Value<String?> localPath = const Value.absent(),
    int? progressSeconds,
    String? notes,
  }) => Sermon(
    id: id ?? this.id,
    title: title ?? this.title,
    speaker: speaker ?? this.speaker,
    church: church ?? this.church,
    scripture: scripture ?? this.scripture,
    durationSeconds: durationSeconds ?? this.durationSeconds,
    type: type ?? this.type,
    sourceUrl: sourceUrl ?? this.sourceUrl,
    thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
    datePreached: datePreached ?? this.datePreached,
    isFavorite: isFavorite ?? this.isFavorite,
    isDownloaded: isDownloaded ?? this.isDownloaded,
    localPath: localPath.present ? localPath.value : this.localPath,
    progressSeconds: progressSeconds ?? this.progressSeconds,
    notes: notes ?? this.notes,
  );
  Sermon copyWithCompanion(SermonsCompanion data) {
    return Sermon(
      id: data.id.present ? data.id.value : this.id,
      title: data.title.present ? data.title.value : this.title,
      speaker: data.speaker.present ? data.speaker.value : this.speaker,
      church: data.church.present ? data.church.value : this.church,
      scripture: data.scripture.present ? data.scripture.value : this.scripture,
      durationSeconds: data.durationSeconds.present
          ? data.durationSeconds.value
          : this.durationSeconds,
      type: data.type.present ? data.type.value : this.type,
      sourceUrl: data.sourceUrl.present ? data.sourceUrl.value : this.sourceUrl,
      thumbnailUrl: data.thumbnailUrl.present
          ? data.thumbnailUrl.value
          : this.thumbnailUrl,
      datePreached: data.datePreached.present
          ? data.datePreached.value
          : this.datePreached,
      isFavorite: data.isFavorite.present
          ? data.isFavorite.value
          : this.isFavorite,
      isDownloaded: data.isDownloaded.present
          ? data.isDownloaded.value
          : this.isDownloaded,
      localPath: data.localPath.present ? data.localPath.value : this.localPath,
      progressSeconds: data.progressSeconds.present
          ? data.progressSeconds.value
          : this.progressSeconds,
      notes: data.notes.present ? data.notes.value : this.notes,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Sermon(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('speaker: $speaker, ')
          ..write('church: $church, ')
          ..write('scripture: $scripture, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('type: $type, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('datePreached: $datePreached, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('localPath: $localPath, ')
          ..write('progressSeconds: $progressSeconds, ')
          ..write('notes: $notes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    title,
    speaker,
    church,
    scripture,
    durationSeconds,
    type,
    sourceUrl,
    thumbnailUrl,
    datePreached,
    isFavorite,
    isDownloaded,
    localPath,
    progressSeconds,
    notes,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Sermon &&
          other.id == this.id &&
          other.title == this.title &&
          other.speaker == this.speaker &&
          other.church == this.church &&
          other.scripture == this.scripture &&
          other.durationSeconds == this.durationSeconds &&
          other.type == this.type &&
          other.sourceUrl == this.sourceUrl &&
          other.thumbnailUrl == this.thumbnailUrl &&
          other.datePreached == this.datePreached &&
          other.isFavorite == this.isFavorite &&
          other.isDownloaded == this.isDownloaded &&
          other.localPath == this.localPath &&
          other.progressSeconds == this.progressSeconds &&
          other.notes == this.notes);
}

class SermonsCompanion extends UpdateCompanion<Sermon> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> speaker;
  final Value<String> church;
  final Value<String> scripture;
  final Value<int> durationSeconds;
  final Value<String> type;
  final Value<String> sourceUrl;
  final Value<String> thumbnailUrl;
  final Value<DateTime> datePreached;
  final Value<bool> isFavorite;
  final Value<bool> isDownloaded;
  final Value<String?> localPath;
  final Value<int> progressSeconds;
  final Value<String> notes;
  final Value<int> rowid;
  const SermonsCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.speaker = const Value.absent(),
    this.church = const Value.absent(),
    this.scripture = const Value.absent(),
    this.durationSeconds = const Value.absent(),
    this.type = const Value.absent(),
    this.sourceUrl = const Value.absent(),
    this.thumbnailUrl = const Value.absent(),
    this.datePreached = const Value.absent(),
    this.isFavorite = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.localPath = const Value.absent(),
    this.progressSeconds = const Value.absent(),
    this.notes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  SermonsCompanion.insert({
    required String id,
    required String title,
    required String speaker,
    required String church,
    required String scripture,
    required int durationSeconds,
    required String type,
    required String sourceUrl,
    required String thumbnailUrl,
    required DateTime datePreached,
    this.isFavorite = const Value.absent(),
    this.isDownloaded = const Value.absent(),
    this.localPath = const Value.absent(),
    this.progressSeconds = const Value.absent(),
    required String notes,
    this.rowid = const Value.absent(),
  }) : id = Value(id),
       title = Value(title),
       speaker = Value(speaker),
       church = Value(church),
       scripture = Value(scripture),
       durationSeconds = Value(durationSeconds),
       type = Value(type),
       sourceUrl = Value(sourceUrl),
       thumbnailUrl = Value(thumbnailUrl),
       datePreached = Value(datePreached),
       notes = Value(notes);
  static Insertable<Sermon> custom({
    Expression<String>? id,
    Expression<String>? title,
    Expression<String>? speaker,
    Expression<String>? church,
    Expression<String>? scripture,
    Expression<int>? durationSeconds,
    Expression<String>? type,
    Expression<String>? sourceUrl,
    Expression<String>? thumbnailUrl,
    Expression<DateTime>? datePreached,
    Expression<bool>? isFavorite,
    Expression<bool>? isDownloaded,
    Expression<String>? localPath,
    Expression<int>? progressSeconds,
    Expression<String>? notes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (speaker != null) 'speaker': speaker,
      if (church != null) 'church': church,
      if (scripture != null) 'scripture': scripture,
      if (durationSeconds != null) 'duration_seconds': durationSeconds,
      if (type != null) 'type': type,
      if (sourceUrl != null) 'source_url': sourceUrl,
      if (thumbnailUrl != null) 'thumbnail_url': thumbnailUrl,
      if (datePreached != null) 'date_preached': datePreached,
      if (isFavorite != null) 'is_favorite': isFavorite,
      if (isDownloaded != null) 'is_downloaded': isDownloaded,
      if (localPath != null) 'local_path': localPath,
      if (progressSeconds != null) 'progress_seconds': progressSeconds,
      if (notes != null) 'notes': notes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  SermonsCompanion copyWith({
    Value<String>? id,
    Value<String>? title,
    Value<String>? speaker,
    Value<String>? church,
    Value<String>? scripture,
    Value<int>? durationSeconds,
    Value<String>? type,
    Value<String>? sourceUrl,
    Value<String>? thumbnailUrl,
    Value<DateTime>? datePreached,
    Value<bool>? isFavorite,
    Value<bool>? isDownloaded,
    Value<String?>? localPath,
    Value<int>? progressSeconds,
    Value<String>? notes,
    Value<int>? rowid,
  }) {
    return SermonsCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      speaker: speaker ?? this.speaker,
      church: church ?? this.church,
      scripture: scripture ?? this.scripture,
      durationSeconds: durationSeconds ?? this.durationSeconds,
      type: type ?? this.type,
      sourceUrl: sourceUrl ?? this.sourceUrl,
      thumbnailUrl: thumbnailUrl ?? this.thumbnailUrl,
      datePreached: datePreached ?? this.datePreached,
      isFavorite: isFavorite ?? this.isFavorite,
      isDownloaded: isDownloaded ?? this.isDownloaded,
      localPath: localPath ?? this.localPath,
      progressSeconds: progressSeconds ?? this.progressSeconds,
      notes: notes ?? this.notes,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (speaker.present) {
      map['speaker'] = Variable<String>(speaker.value);
    }
    if (church.present) {
      map['church'] = Variable<String>(church.value);
    }
    if (scripture.present) {
      map['scripture'] = Variable<String>(scripture.value);
    }
    if (durationSeconds.present) {
      map['duration_seconds'] = Variable<int>(durationSeconds.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (sourceUrl.present) {
      map['source_url'] = Variable<String>(sourceUrl.value);
    }
    if (thumbnailUrl.present) {
      map['thumbnail_url'] = Variable<String>(thumbnailUrl.value);
    }
    if (datePreached.present) {
      map['date_preached'] = Variable<DateTime>(datePreached.value);
    }
    if (isFavorite.present) {
      map['is_favorite'] = Variable<bool>(isFavorite.value);
    }
    if (isDownloaded.present) {
      map['is_downloaded'] = Variable<bool>(isDownloaded.value);
    }
    if (localPath.present) {
      map['local_path'] = Variable<String>(localPath.value);
    }
    if (progressSeconds.present) {
      map['progress_seconds'] = Variable<int>(progressSeconds.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SermonsCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('speaker: $speaker, ')
          ..write('church: $church, ')
          ..write('scripture: $scripture, ')
          ..write('durationSeconds: $durationSeconds, ')
          ..write('type: $type, ')
          ..write('sourceUrl: $sourceUrl, ')
          ..write('thumbnailUrl: $thumbnailUrl, ')
          ..write('datePreached: $datePreached, ')
          ..write('isFavorite: $isFavorite, ')
          ..write('isDownloaded: $isDownloaded, ')
          ..write('localPath: $localPath, ')
          ..write('progressSeconds: $progressSeconds, ')
          ..write('notes: $notes, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TranscriptsTable extends Transcripts
    with TableInfo<$TranscriptsTable, Transcript> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TranscriptsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _rawTextMeta = const VerificationMeta(
    'rawText',
  );
  @override
  late final GeneratedColumn<String> rawText = GeneratedColumn<String>(
    'raw_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _editedTextMeta = const VerificationMeta(
    'editedText',
  );
  @override
  late final GeneratedColumn<String> editedText = GeneratedColumn<String>(
    'edited_text',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, rawText, editedText];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transcripts';
  @override
  VerificationContext validateIntegrity(
    Insertable<Transcript> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('raw_text')) {
      context.handle(
        _rawTextMeta,
        rawText.isAcceptableOrUnknown(data['raw_text']!, _rawTextMeta),
      );
    } else if (isInserting) {
      context.missing(_rawTextMeta);
    }
    if (data.containsKey('edited_text')) {
      context.handle(
        _editedTextMeta,
        editedText.isAcceptableOrUnknown(data['edited_text']!, _editedTextMeta),
      );
    } else if (isInserting) {
      context.missing(_editedTextMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Transcript map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transcript(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      rawText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}raw_text'],
      )!,
      editedText: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}edited_text'],
      )!,
    );
  }

  @override
  $TranscriptsTable createAlias(String alias) {
    return $TranscriptsTable(attachedDatabase, alias);
  }
}

class Transcript extends DataClass implements Insertable<Transcript> {
  final int id;
  final String rawText;
  final String editedText;
  const Transcript({
    required this.id,
    required this.rawText,
    required this.editedText,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['raw_text'] = Variable<String>(rawText);
    map['edited_text'] = Variable<String>(editedText);
    return map;
  }

  TranscriptsCompanion toCompanion(bool nullToAbsent) {
    return TranscriptsCompanion(
      id: Value(id),
      rawText: Value(rawText),
      editedText: Value(editedText),
    );
  }

  factory Transcript.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Transcript(
      id: serializer.fromJson<int>(json['id']),
      rawText: serializer.fromJson<String>(json['rawText']),
      editedText: serializer.fromJson<String>(json['editedText']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'rawText': serializer.toJson<String>(rawText),
      'editedText': serializer.toJson<String>(editedText),
    };
  }

  Transcript copyWith({int? id, String? rawText, String? editedText}) =>
      Transcript(
        id: id ?? this.id,
        rawText: rawText ?? this.rawText,
        editedText: editedText ?? this.editedText,
      );
  Transcript copyWithCompanion(TranscriptsCompanion data) {
    return Transcript(
      id: data.id.present ? data.id.value : this.id,
      rawText: data.rawText.present ? data.rawText.value : this.rawText,
      editedText: data.editedText.present
          ? data.editedText.value
          : this.editedText,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Transcript(')
          ..write('id: $id, ')
          ..write('rawText: $rawText, ')
          ..write('editedText: $editedText')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, rawText, editedText);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Transcript &&
          other.id == this.id &&
          other.rawText == this.rawText &&
          other.editedText == this.editedText);
}

class TranscriptsCompanion extends UpdateCompanion<Transcript> {
  final Value<int> id;
  final Value<String> rawText;
  final Value<String> editedText;
  const TranscriptsCompanion({
    this.id = const Value.absent(),
    this.rawText = const Value.absent(),
    this.editedText = const Value.absent(),
  });
  TranscriptsCompanion.insert({
    this.id = const Value.absent(),
    required String rawText,
    required String editedText,
  }) : rawText = Value(rawText),
       editedText = Value(editedText);
  static Insertable<Transcript> custom({
    Expression<int>? id,
    Expression<String>? rawText,
    Expression<String>? editedText,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (rawText != null) 'raw_text': rawText,
      if (editedText != null) 'edited_text': editedText,
    });
  }

  TranscriptsCompanion copyWith({
    Value<int>? id,
    Value<String>? rawText,
    Value<String>? editedText,
  }) {
    return TranscriptsCompanion(
      id: id ?? this.id,
      rawText: rawText ?? this.rawText,
      editedText: editedText ?? this.editedText,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (rawText.present) {
      map['raw_text'] = Variable<String>(rawText.value);
    }
    if (editedText.present) {
      map['edited_text'] = Variable<String>(editedText.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TranscriptsCompanion(')
          ..write('id: $id, ')
          ..write('rawText: $rawText, ')
          ..write('editedText: $editedText')
          ..write(')'))
        .toString();
  }
}

class $HighlightsTable extends Highlights
    with TableInfo<$HighlightsTable, Highlight> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $HighlightsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _verseRefMeta = const VerificationMeta(
    'verseRef',
  );
  @override
  late final GeneratedColumn<String> verseRef = GeneratedColumn<String>(
    'verse_ref',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _colorMeta = const VerificationMeta('color');
  @override
  late final GeneratedColumn<String> color = GeneratedColumn<String>(
    'color',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _createdAtMeta = const VerificationMeta(
    'createdAt',
  );
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
    'created_at',
    aliasedName,
    false,
    type: DriftSqlType.dateTime,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, verseRef, color, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'highlights';
  @override
  VerificationContext validateIntegrity(
    Insertable<Highlight> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('verse_ref')) {
      context.handle(
        _verseRefMeta,
        verseRef.isAcceptableOrUnknown(data['verse_ref']!, _verseRefMeta),
      );
    } else if (isInserting) {
      context.missing(_verseRefMeta);
    }
    if (data.containsKey('color')) {
      context.handle(
        _colorMeta,
        color.isAcceptableOrUnknown(data['color']!, _colorMeta),
      );
    } else if (isInserting) {
      context.missing(_colorMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(
        _createdAtMeta,
        createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta),
      );
    } else if (isInserting) {
      context.missing(_createdAtMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Highlight map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Highlight(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      verseRef: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}verse_ref'],
      )!,
      color: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}color'],
      )!,
      createdAt: attachedDatabase.typeMapping.read(
        DriftSqlType.dateTime,
        data['${effectivePrefix}created_at'],
      )!,
    );
  }

  @override
  $HighlightsTable createAlias(String alias) {
    return $HighlightsTable(attachedDatabase, alias);
  }
}

class Highlight extends DataClass implements Insertable<Highlight> {
  final int id;
  final String verseRef;
  final String color;
  final DateTime createdAt;
  const Highlight({
    required this.id,
    required this.verseRef,
    required this.color,
    required this.createdAt,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['verse_ref'] = Variable<String>(verseRef);
    map['color'] = Variable<String>(color);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  HighlightsCompanion toCompanion(bool nullToAbsent) {
    return HighlightsCompanion(
      id: Value(id),
      verseRef: Value(verseRef),
      color: Value(color),
      createdAt: Value(createdAt),
    );
  }

  factory Highlight.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Highlight(
      id: serializer.fromJson<int>(json['id']),
      verseRef: serializer.fromJson<String>(json['verseRef']),
      color: serializer.fromJson<String>(json['color']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'verseRef': serializer.toJson<String>(verseRef),
      'color': serializer.toJson<String>(color),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  Highlight copyWith({
    int? id,
    String? verseRef,
    String? color,
    DateTime? createdAt,
  }) => Highlight(
    id: id ?? this.id,
    verseRef: verseRef ?? this.verseRef,
    color: color ?? this.color,
    createdAt: createdAt ?? this.createdAt,
  );
  Highlight copyWithCompanion(HighlightsCompanion data) {
    return Highlight(
      id: data.id.present ? data.id.value : this.id,
      verseRef: data.verseRef.present ? data.verseRef.value : this.verseRef,
      color: data.color.present ? data.color.value : this.color,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Highlight(')
          ..write('id: $id, ')
          ..write('verseRef: $verseRef, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, verseRef, color, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Highlight &&
          other.id == this.id &&
          other.verseRef == this.verseRef &&
          other.color == this.color &&
          other.createdAt == this.createdAt);
}

class HighlightsCompanion extends UpdateCompanion<Highlight> {
  final Value<int> id;
  final Value<String> verseRef;
  final Value<String> color;
  final Value<DateTime> createdAt;
  const HighlightsCompanion({
    this.id = const Value.absent(),
    this.verseRef = const Value.absent(),
    this.color = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  HighlightsCompanion.insert({
    this.id = const Value.absent(),
    required String verseRef,
    required String color,
    required DateTime createdAt,
  }) : verseRef = Value(verseRef),
       color = Value(color),
       createdAt = Value(createdAt);
  static Insertable<Highlight> custom({
    Expression<int>? id,
    Expression<String>? verseRef,
    Expression<String>? color,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (verseRef != null) 'verse_ref': verseRef,
      if (color != null) 'color': color,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  HighlightsCompanion copyWith({
    Value<int>? id,
    Value<String>? verseRef,
    Value<String>? color,
    Value<DateTime>? createdAt,
  }) {
    return HighlightsCompanion(
      id: id ?? this.id,
      verseRef: verseRef ?? this.verseRef,
      color: color ?? this.color,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (verseRef.present) {
      map['verse_ref'] = Variable<String>(verseRef.value);
    }
    if (color.present) {
      map['color'] = Variable<String>(color.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HighlightsCompanion(')
          ..write('id: $id, ')
          ..write('verseRef: $verseRef, ')
          ..write('color: $color, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

class $ReadingProgressesTable extends ReadingProgresses
    with TableInfo<$ReadingProgressesTable, ReadingProgress> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ReadingProgressesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _lastReadPositionMeta = const VerificationMeta(
    'lastReadPosition',
  );
  @override
  late final GeneratedColumn<String> lastReadPosition = GeneratedColumn<String>(
    'last_read_position',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _planProgressMeta = const VerificationMeta(
    'planProgress',
  );
  @override
  late final GeneratedColumn<String> planProgress = GeneratedColumn<String>(
    'plan_progress',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [id, lastReadPosition, planProgress];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'reading_progresses';
  @override
  VerificationContext validateIntegrity(
    Insertable<ReadingProgress> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('last_read_position')) {
      context.handle(
        _lastReadPositionMeta,
        lastReadPosition.isAcceptableOrUnknown(
          data['last_read_position']!,
          _lastReadPositionMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_lastReadPositionMeta);
    }
    if (data.containsKey('plan_progress')) {
      context.handle(
        _planProgressMeta,
        planProgress.isAcceptableOrUnknown(
          data['plan_progress']!,
          _planProgressMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_planProgressMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ReadingProgress map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ReadingProgress(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      lastReadPosition: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}last_read_position'],
      )!,
      planProgress: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}plan_progress'],
      )!,
    );
  }

  @override
  $ReadingProgressesTable createAlias(String alias) {
    return $ReadingProgressesTable(attachedDatabase, alias);
  }
}

class ReadingProgress extends DataClass implements Insertable<ReadingProgress> {
  final int id;
  final String lastReadPosition;
  final String planProgress;
  const ReadingProgress({
    required this.id,
    required this.lastReadPosition,
    required this.planProgress,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['last_read_position'] = Variable<String>(lastReadPosition);
    map['plan_progress'] = Variable<String>(planProgress);
    return map;
  }

  ReadingProgressesCompanion toCompanion(bool nullToAbsent) {
    return ReadingProgressesCompanion(
      id: Value(id),
      lastReadPosition: Value(lastReadPosition),
      planProgress: Value(planProgress),
    );
  }

  factory ReadingProgress.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ReadingProgress(
      id: serializer.fromJson<int>(json['id']),
      lastReadPosition: serializer.fromJson<String>(json['lastReadPosition']),
      planProgress: serializer.fromJson<String>(json['planProgress']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'lastReadPosition': serializer.toJson<String>(lastReadPosition),
      'planProgress': serializer.toJson<String>(planProgress),
    };
  }

  ReadingProgress copyWith({
    int? id,
    String? lastReadPosition,
    String? planProgress,
  }) => ReadingProgress(
    id: id ?? this.id,
    lastReadPosition: lastReadPosition ?? this.lastReadPosition,
    planProgress: planProgress ?? this.planProgress,
  );
  ReadingProgress copyWithCompanion(ReadingProgressesCompanion data) {
    return ReadingProgress(
      id: data.id.present ? data.id.value : this.id,
      lastReadPosition: data.lastReadPosition.present
          ? data.lastReadPosition.value
          : this.lastReadPosition,
      planProgress: data.planProgress.present
          ? data.planProgress.value
          : this.planProgress,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgress(')
          ..write('id: $id, ')
          ..write('lastReadPosition: $lastReadPosition, ')
          ..write('planProgress: $planProgress')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, lastReadPosition, planProgress);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ReadingProgress &&
          other.id == this.id &&
          other.lastReadPosition == this.lastReadPosition &&
          other.planProgress == this.planProgress);
}

class ReadingProgressesCompanion extends UpdateCompanion<ReadingProgress> {
  final Value<int> id;
  final Value<String> lastReadPosition;
  final Value<String> planProgress;
  const ReadingProgressesCompanion({
    this.id = const Value.absent(),
    this.lastReadPosition = const Value.absent(),
    this.planProgress = const Value.absent(),
  });
  ReadingProgressesCompanion.insert({
    this.id = const Value.absent(),
    required String lastReadPosition,
    required String planProgress,
  }) : lastReadPosition = Value(lastReadPosition),
       planProgress = Value(planProgress);
  static Insertable<ReadingProgress> custom({
    Expression<int>? id,
    Expression<String>? lastReadPosition,
    Expression<String>? planProgress,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (lastReadPosition != null) 'last_read_position': lastReadPosition,
      if (planProgress != null) 'plan_progress': planProgress,
    });
  }

  ReadingProgressesCompanion copyWith({
    Value<int>? id,
    Value<String>? lastReadPosition,
    Value<String>? planProgress,
  }) {
    return ReadingProgressesCompanion(
      id: id ?? this.id,
      lastReadPosition: lastReadPosition ?? this.lastReadPosition,
      planProgress: planProgress ?? this.planProgress,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (lastReadPosition.present) {
      map['last_read_position'] = Variable<String>(lastReadPosition.value);
    }
    if (planProgress.present) {
      map['plan_progress'] = Variable<String>(planProgress.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ReadingProgressesCompanion(')
          ..write('id: $id, ')
          ..write('lastReadPosition: $lastReadPosition, ')
          ..write('planProgress: $planProgress')
          ..write(')'))
        .toString();
  }
}

class $SettingsTable extends Settings with TableInfo<$SettingsTable, Setting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
    'id',
    aliasedName,
    false,
    hasAutoIncrement: true,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'PRIMARY KEY AUTOINCREMENT',
    ),
  );
  static const VerificationMeta _themeMeta = const VerificationMeta('theme');
  @override
  late final GeneratedColumn<String> theme = GeneratedColumn<String>(
    'theme',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: false,
    defaultValue: const Constant('system'),
  );
  static const VerificationMeta _fontSizeMeta = const VerificationMeta(
    'fontSize',
  );
  @override
  late final GeneratedColumn<int> fontSize = GeneratedColumn<int>(
    'font_size',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: false,
    defaultValue: const Constant(16),
  );
  static const VerificationMeta _defaultTranslationMeta =
      const VerificationMeta('defaultTranslation');
  @override
  late final GeneratedColumn<String> defaultTranslation =
      GeneratedColumn<String>(
        'default_translation',
        aliasedName,
        false,
        type: DriftSqlType.string,
        requiredDuringInsert: false,
        defaultValue: const Constant('KJV'),
      );
  static const VerificationMeta _notificationsEnabledMeta =
      const VerificationMeta('notificationsEnabled');
  @override
  late final GeneratedColumn<bool> notificationsEnabled = GeneratedColumn<bool>(
    'notifications_enabled',
    aliasedName,
    false,
    type: DriftSqlType.bool,
    requiredDuringInsert: false,
    defaultConstraints: GeneratedColumn.constraintIsAlways(
      'CHECK ("notifications_enabled" IN (0, 1))',
    ),
    defaultValue: const Constant(true),
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    theme,
    fontSize,
    defaultTranslation,
    notificationsEnabled,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'settings';
  @override
  VerificationContext validateIntegrity(
    Insertable<Setting> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('theme')) {
      context.handle(
        _themeMeta,
        theme.isAcceptableOrUnknown(data['theme']!, _themeMeta),
      );
    }
    if (data.containsKey('font_size')) {
      context.handle(
        _fontSizeMeta,
        fontSize.isAcceptableOrUnknown(data['font_size']!, _fontSizeMeta),
      );
    }
    if (data.containsKey('default_translation')) {
      context.handle(
        _defaultTranslationMeta,
        defaultTranslation.isAcceptableOrUnknown(
          data['default_translation']!,
          _defaultTranslationMeta,
        ),
      );
    }
    if (data.containsKey('notifications_enabled')) {
      context.handle(
        _notificationsEnabledMeta,
        notificationsEnabled.isAcceptableOrUnknown(
          data['notifications_enabled']!,
          _notificationsEnabledMeta,
        ),
      );
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Setting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Setting(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      theme: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}theme'],
      )!,
      fontSize: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}font_size'],
      )!,
      defaultTranslation: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}default_translation'],
      )!,
      notificationsEnabled: attachedDatabase.typeMapping.read(
        DriftSqlType.bool,
        data['${effectivePrefix}notifications_enabled'],
      )!,
    );
  }

  @override
  $SettingsTable createAlias(String alias) {
    return $SettingsTable(attachedDatabase, alias);
  }
}

class Setting extends DataClass implements Insertable<Setting> {
  final int id;
  final String theme;
  final int fontSize;
  final String defaultTranslation;
  final bool notificationsEnabled;
  const Setting({
    required this.id,
    required this.theme,
    required this.fontSize,
    required this.defaultTranslation,
    required this.notificationsEnabled,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['theme'] = Variable<String>(theme);
    map['font_size'] = Variable<int>(fontSize);
    map['default_translation'] = Variable<String>(defaultTranslation);
    map['notifications_enabled'] = Variable<bool>(notificationsEnabled);
    return map;
  }

  SettingsCompanion toCompanion(bool nullToAbsent) {
    return SettingsCompanion(
      id: Value(id),
      theme: Value(theme),
      fontSize: Value(fontSize),
      defaultTranslation: Value(defaultTranslation),
      notificationsEnabled: Value(notificationsEnabled),
    );
  }

  factory Setting.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Setting(
      id: serializer.fromJson<int>(json['id']),
      theme: serializer.fromJson<String>(json['theme']),
      fontSize: serializer.fromJson<int>(json['fontSize']),
      defaultTranslation: serializer.fromJson<String>(
        json['defaultTranslation'],
      ),
      notificationsEnabled: serializer.fromJson<bool>(
        json['notificationsEnabled'],
      ),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'theme': serializer.toJson<String>(theme),
      'fontSize': serializer.toJson<int>(fontSize),
      'defaultTranslation': serializer.toJson<String>(defaultTranslation),
      'notificationsEnabled': serializer.toJson<bool>(notificationsEnabled),
    };
  }

  Setting copyWith({
    int? id,
    String? theme,
    int? fontSize,
    String? defaultTranslation,
    bool? notificationsEnabled,
  }) => Setting(
    id: id ?? this.id,
    theme: theme ?? this.theme,
    fontSize: fontSize ?? this.fontSize,
    defaultTranslation: defaultTranslation ?? this.defaultTranslation,
    notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
  );
  Setting copyWithCompanion(SettingsCompanion data) {
    return Setting(
      id: data.id.present ? data.id.value : this.id,
      theme: data.theme.present ? data.theme.value : this.theme,
      fontSize: data.fontSize.present ? data.fontSize.value : this.fontSize,
      defaultTranslation: data.defaultTranslation.present
          ? data.defaultTranslation.value
          : this.defaultTranslation,
      notificationsEnabled: data.notificationsEnabled.present
          ? data.notificationsEnabled.value
          : this.notificationsEnabled,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Setting(')
          ..write('id: $id, ')
          ..write('theme: $theme, ')
          ..write('fontSize: $fontSize, ')
          ..write('defaultTranslation: $defaultTranslation, ')
          ..write('notificationsEnabled: $notificationsEnabled')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
    id,
    theme,
    fontSize,
    defaultTranslation,
    notificationsEnabled,
  );
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Setting &&
          other.id == this.id &&
          other.theme == this.theme &&
          other.fontSize == this.fontSize &&
          other.defaultTranslation == this.defaultTranslation &&
          other.notificationsEnabled == this.notificationsEnabled);
}

class SettingsCompanion extends UpdateCompanion<Setting> {
  final Value<int> id;
  final Value<String> theme;
  final Value<int> fontSize;
  final Value<String> defaultTranslation;
  final Value<bool> notificationsEnabled;
  const SettingsCompanion({
    this.id = const Value.absent(),
    this.theme = const Value.absent(),
    this.fontSize = const Value.absent(),
    this.defaultTranslation = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
  });
  SettingsCompanion.insert({
    this.id = const Value.absent(),
    this.theme = const Value.absent(),
    this.fontSize = const Value.absent(),
    this.defaultTranslation = const Value.absent(),
    this.notificationsEnabled = const Value.absent(),
  });
  static Insertable<Setting> custom({
    Expression<int>? id,
    Expression<String>? theme,
    Expression<int>? fontSize,
    Expression<String>? defaultTranslation,
    Expression<bool>? notificationsEnabled,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (theme != null) 'theme': theme,
      if (fontSize != null) 'font_size': fontSize,
      if (defaultTranslation != null) 'default_translation': defaultTranslation,
      if (notificationsEnabled != null)
        'notifications_enabled': notificationsEnabled,
    });
  }

  SettingsCompanion copyWith({
    Value<int>? id,
    Value<String>? theme,
    Value<int>? fontSize,
    Value<String>? defaultTranslation,
    Value<bool>? notificationsEnabled,
  }) {
    return SettingsCompanion(
      id: id ?? this.id,
      theme: theme ?? this.theme,
      fontSize: fontSize ?? this.fontSize,
      defaultTranslation: defaultTranslation ?? this.defaultTranslation,
      notificationsEnabled: notificationsEnabled ?? this.notificationsEnabled,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (theme.present) {
      map['theme'] = Variable<String>(theme.value);
    }
    if (fontSize.present) {
      map['font_size'] = Variable<int>(fontSize.value);
    }
    if (defaultTranslation.present) {
      map['default_translation'] = Variable<String>(defaultTranslation.value);
    }
    if (notificationsEnabled.present) {
      map['notifications_enabled'] = Variable<bool>(notificationsEnabled.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SettingsCompanion(')
          ..write('id: $id, ')
          ..write('theme: $theme, ')
          ..write('fontSize: $fontSize, ')
          ..write('defaultTranslation: $defaultTranslation, ')
          ..write('notificationsEnabled: $notificationsEnabled')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $NotesTable notes = $NotesTable(this);
  late final $AlarmsTable alarms = $AlarmsTable(this);
  late final $SermonsTable sermons = $SermonsTable(this);
  late final $TranscriptsTable transcripts = $TranscriptsTable(this);
  late final $HighlightsTable highlights = $HighlightsTable(this);
  late final $ReadingProgressesTable readingProgresses =
      $ReadingProgressesTable(this);
  late final $SettingsTable settings = $SettingsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    notes,
    alarms,
    sermons,
    transcripts,
    highlights,
    readingProgresses,
    settings,
  ];
}

typedef $$NotesTableCreateCompanionBuilder =
    NotesCompanion Function({
      required String id,
      required String title,
      required String content,
      required String type,
      required String linkedVerses,
      Value<String?> linkedSermonId,
      required String tags,
      required DateTime createdAt,
      required DateTime updatedAt,
      Value<bool> isPinned,
      Value<String> colorLabel,
      Value<int> rowid,
    });
typedef $$NotesTableUpdateCompanionBuilder =
    NotesCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> content,
      Value<String> type,
      Value<String> linkedVerses,
      Value<String?> linkedSermonId,
      Value<String> tags,
      Value<DateTime> createdAt,
      Value<DateTime> updatedAt,
      Value<bool> isPinned,
      Value<String> colorLabel,
      Value<int> rowid,
    });

class $$NotesTableFilterComposer extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linkedVerses => $composableBuilder(
    column: $table.linkedVerses,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get linkedSermonId => $composableBuilder(
    column: $table.linkedSermonId,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isPinned => $composableBuilder(
    column: $table.isPinned,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get colorLabel => $composableBuilder(
    column: $table.colorLabel,
    builder: (column) => ColumnFilters(column),
  );
}

class $$NotesTableOrderingComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get content => $composableBuilder(
    column: $table.content,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linkedVerses => $composableBuilder(
    column: $table.linkedVerses,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get linkedSermonId => $composableBuilder(
    column: $table.linkedSermonId,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get tags => $composableBuilder(
    column: $table.tags,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
    column: $table.updatedAt,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isPinned => $composableBuilder(
    column: $table.isPinned,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get colorLabel => $composableBuilder(
    column: $table.colorLabel,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$NotesTableAnnotationComposer
    extends Composer<_$AppDatabase, $NotesTable> {
  $$NotesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get content =>
      $composableBuilder(column: $table.content, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get linkedVerses => $composableBuilder(
    column: $table.linkedVerses,
    builder: (column) => column,
  );

  GeneratedColumn<String> get linkedSermonId => $composableBuilder(
    column: $table.linkedSermonId,
    builder: (column) => column,
  );

  GeneratedColumn<String> get tags =>
      $composableBuilder(column: $table.tags, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<bool> get isPinned =>
      $composableBuilder(column: $table.isPinned, builder: (column) => column);

  GeneratedColumn<String> get colorLabel => $composableBuilder(
    column: $table.colorLabel,
    builder: (column) => column,
  );
}

class $$NotesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $NotesTable,
          Note,
          $$NotesTableFilterComposer,
          $$NotesTableOrderingComposer,
          $$NotesTableAnnotationComposer,
          $$NotesTableCreateCompanionBuilder,
          $$NotesTableUpdateCompanionBuilder,
          (Note, BaseReferences<_$AppDatabase, $NotesTable, Note>),
          Note,
          PrefetchHooks Function()
        > {
  $$NotesTableTableManager(_$AppDatabase db, $NotesTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$NotesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$NotesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$NotesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> content = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> linkedVerses = const Value.absent(),
                Value<String?> linkedSermonId = const Value.absent(),
                Value<String> tags = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
                Value<DateTime> updatedAt = const Value.absent(),
                Value<bool> isPinned = const Value.absent(),
                Value<String> colorLabel = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotesCompanion(
                id: id,
                title: title,
                content: content,
                type: type,
                linkedVerses: linkedVerses,
                linkedSermonId: linkedSermonId,
                tags: tags,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isPinned: isPinned,
                colorLabel: colorLabel,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String content,
                required String type,
                required String linkedVerses,
                Value<String?> linkedSermonId = const Value.absent(),
                required String tags,
                required DateTime createdAt,
                required DateTime updatedAt,
                Value<bool> isPinned = const Value.absent(),
                Value<String> colorLabel = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => NotesCompanion.insert(
                id: id,
                title: title,
                content: content,
                type: type,
                linkedVerses: linkedVerses,
                linkedSermonId: linkedSermonId,
                tags: tags,
                createdAt: createdAt,
                updatedAt: updatedAt,
                isPinned: isPinned,
                colorLabel: colorLabel,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$NotesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $NotesTable,
      Note,
      $$NotesTableFilterComposer,
      $$NotesTableOrderingComposer,
      $$NotesTableAnnotationComposer,
      $$NotesTableCreateCompanionBuilder,
      $$NotesTableUpdateCompanionBuilder,
      (Note, BaseReferences<_$AppDatabase, $NotesTable, Note>),
      Note,
      PrefetchHooks Function()
    >;
typedef $$AlarmsTableCreateCompanionBuilder =
    AlarmsCompanion Function({
      Value<int> id,
      required DateTime time,
      required String repeatDays,
      required String label,
      required String sound,
      Value<bool> isActive,
    });
typedef $$AlarmsTableUpdateCompanionBuilder =
    AlarmsCompanion Function({
      Value<int> id,
      Value<DateTime> time,
      Value<String> repeatDays,
      Value<String> label,
      Value<String> sound,
      Value<bool> isActive,
    });

class $$AlarmsTableFilterComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get repeatDays => $composableBuilder(
    column: $table.repeatDays,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sound => $composableBuilder(
    column: $table.sound,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnFilters(column),
  );
}

class $$AlarmsTableOrderingComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get time => $composableBuilder(
    column: $table.time,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get repeatDays => $composableBuilder(
    column: $table.repeatDays,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get label => $composableBuilder(
    column: $table.label,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sound => $composableBuilder(
    column: $table.sound,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isActive => $composableBuilder(
    column: $table.isActive,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$AlarmsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AlarmsTable> {
  $$AlarmsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<DateTime> get time =>
      $composableBuilder(column: $table.time, builder: (column) => column);

  GeneratedColumn<String> get repeatDays => $composableBuilder(
    column: $table.repeatDays,
    builder: (column) => column,
  );

  GeneratedColumn<String> get label =>
      $composableBuilder(column: $table.label, builder: (column) => column);

  GeneratedColumn<String> get sound =>
      $composableBuilder(column: $table.sound, builder: (column) => column);

  GeneratedColumn<bool> get isActive =>
      $composableBuilder(column: $table.isActive, builder: (column) => column);
}

class $$AlarmsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $AlarmsTable,
          Alarm,
          $$AlarmsTableFilterComposer,
          $$AlarmsTableOrderingComposer,
          $$AlarmsTableAnnotationComposer,
          $$AlarmsTableCreateCompanionBuilder,
          $$AlarmsTableUpdateCompanionBuilder,
          (Alarm, BaseReferences<_$AppDatabase, $AlarmsTable, Alarm>),
          Alarm,
          PrefetchHooks Function()
        > {
  $$AlarmsTableTableManager(_$AppDatabase db, $AlarmsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AlarmsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AlarmsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AlarmsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<DateTime> time = const Value.absent(),
                Value<String> repeatDays = const Value.absent(),
                Value<String> label = const Value.absent(),
                Value<String> sound = const Value.absent(),
                Value<bool> isActive = const Value.absent(),
              }) => AlarmsCompanion(
                id: id,
                time: time,
                repeatDays: repeatDays,
                label: label,
                sound: sound,
                isActive: isActive,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required DateTime time,
                required String repeatDays,
                required String label,
                required String sound,
                Value<bool> isActive = const Value.absent(),
              }) => AlarmsCompanion.insert(
                id: id,
                time: time,
                repeatDays: repeatDays,
                label: label,
                sound: sound,
                isActive: isActive,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$AlarmsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $AlarmsTable,
      Alarm,
      $$AlarmsTableFilterComposer,
      $$AlarmsTableOrderingComposer,
      $$AlarmsTableAnnotationComposer,
      $$AlarmsTableCreateCompanionBuilder,
      $$AlarmsTableUpdateCompanionBuilder,
      (Alarm, BaseReferences<_$AppDatabase, $AlarmsTable, Alarm>),
      Alarm,
      PrefetchHooks Function()
    >;
typedef $$SermonsTableCreateCompanionBuilder =
    SermonsCompanion Function({
      required String id,
      required String title,
      required String speaker,
      required String church,
      required String scripture,
      required int durationSeconds,
      required String type,
      required String sourceUrl,
      required String thumbnailUrl,
      required DateTime datePreached,
      Value<bool> isFavorite,
      Value<bool> isDownloaded,
      Value<String?> localPath,
      Value<int> progressSeconds,
      required String notes,
      Value<int> rowid,
    });
typedef $$SermonsTableUpdateCompanionBuilder =
    SermonsCompanion Function({
      Value<String> id,
      Value<String> title,
      Value<String> speaker,
      Value<String> church,
      Value<String> scripture,
      Value<int> durationSeconds,
      Value<String> type,
      Value<String> sourceUrl,
      Value<String> thumbnailUrl,
      Value<DateTime> datePreached,
      Value<bool> isFavorite,
      Value<bool> isDownloaded,
      Value<String?> localPath,
      Value<int> progressSeconds,
      Value<String> notes,
      Value<int> rowid,
    });

class $$SermonsTableFilterComposer
    extends Composer<_$AppDatabase, $SermonsTable> {
  $$SermonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get speaker => $composableBuilder(
    column: $table.speaker,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get church => $composableBuilder(
    column: $table.church,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get scripture => $composableBuilder(
    column: $table.scripture,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get thumbnailUrl => $composableBuilder(
    column: $table.thumbnailUrl,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get datePreached => $composableBuilder(
    column: $table.datePreached,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get progressSeconds => $composableBuilder(
    column: $table.progressSeconds,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SermonsTableOrderingComposer
    extends Composer<_$AppDatabase, $SermonsTable> {
  $$SermonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get title => $composableBuilder(
    column: $table.title,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get speaker => $composableBuilder(
    column: $table.speaker,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get church => $composableBuilder(
    column: $table.church,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get scripture => $composableBuilder(
    column: $table.scripture,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get type => $composableBuilder(
    column: $table.type,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get sourceUrl => $composableBuilder(
    column: $table.sourceUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get thumbnailUrl => $composableBuilder(
    column: $table.thumbnailUrl,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get datePreached => $composableBuilder(
    column: $table.datePreached,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get localPath => $composableBuilder(
    column: $table.localPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get progressSeconds => $composableBuilder(
    column: $table.progressSeconds,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get notes => $composableBuilder(
    column: $table.notes,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SermonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SermonsTable> {
  $$SermonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<String> get speaker =>
      $composableBuilder(column: $table.speaker, builder: (column) => column);

  GeneratedColumn<String> get church =>
      $composableBuilder(column: $table.church, builder: (column) => column);

  GeneratedColumn<String> get scripture =>
      $composableBuilder(column: $table.scripture, builder: (column) => column);

  GeneratedColumn<int> get durationSeconds => $composableBuilder(
    column: $table.durationSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get sourceUrl =>
      $composableBuilder(column: $table.sourceUrl, builder: (column) => column);

  GeneratedColumn<String> get thumbnailUrl => $composableBuilder(
    column: $table.thumbnailUrl,
    builder: (column) => column,
  );

  GeneratedColumn<DateTime> get datePreached => $composableBuilder(
    column: $table.datePreached,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isFavorite => $composableBuilder(
    column: $table.isFavorite,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get isDownloaded => $composableBuilder(
    column: $table.isDownloaded,
    builder: (column) => column,
  );

  GeneratedColumn<String> get localPath =>
      $composableBuilder(column: $table.localPath, builder: (column) => column);

  GeneratedColumn<int> get progressSeconds => $composableBuilder(
    column: $table.progressSeconds,
    builder: (column) => column,
  );

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);
}

class $$SermonsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SermonsTable,
          Sermon,
          $$SermonsTableFilterComposer,
          $$SermonsTableOrderingComposer,
          $$SermonsTableAnnotationComposer,
          $$SermonsTableCreateCompanionBuilder,
          $$SermonsTableUpdateCompanionBuilder,
          (Sermon, BaseReferences<_$AppDatabase, $SermonsTable, Sermon>),
          Sermon,
          PrefetchHooks Function()
        > {
  $$SermonsTableTableManager(_$AppDatabase db, $SermonsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SermonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SermonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SermonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> id = const Value.absent(),
                Value<String> title = const Value.absent(),
                Value<String> speaker = const Value.absent(),
                Value<String> church = const Value.absent(),
                Value<String> scripture = const Value.absent(),
                Value<int> durationSeconds = const Value.absent(),
                Value<String> type = const Value.absent(),
                Value<String> sourceUrl = const Value.absent(),
                Value<String> thumbnailUrl = const Value.absent(),
                Value<DateTime> datePreached = const Value.absent(),
                Value<bool> isFavorite = const Value.absent(),
                Value<bool> isDownloaded = const Value.absent(),
                Value<String?> localPath = const Value.absent(),
                Value<int> progressSeconds = const Value.absent(),
                Value<String> notes = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => SermonsCompanion(
                id: id,
                title: title,
                speaker: speaker,
                church: church,
                scripture: scripture,
                durationSeconds: durationSeconds,
                type: type,
                sourceUrl: sourceUrl,
                thumbnailUrl: thumbnailUrl,
                datePreached: datePreached,
                isFavorite: isFavorite,
                isDownloaded: isDownloaded,
                localPath: localPath,
                progressSeconds: progressSeconds,
                notes: notes,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String id,
                required String title,
                required String speaker,
                required String church,
                required String scripture,
                required int durationSeconds,
                required String type,
                required String sourceUrl,
                required String thumbnailUrl,
                required DateTime datePreached,
                Value<bool> isFavorite = const Value.absent(),
                Value<bool> isDownloaded = const Value.absent(),
                Value<String?> localPath = const Value.absent(),
                Value<int> progressSeconds = const Value.absent(),
                required String notes,
                Value<int> rowid = const Value.absent(),
              }) => SermonsCompanion.insert(
                id: id,
                title: title,
                speaker: speaker,
                church: church,
                scripture: scripture,
                durationSeconds: durationSeconds,
                type: type,
                sourceUrl: sourceUrl,
                thumbnailUrl: thumbnailUrl,
                datePreached: datePreached,
                isFavorite: isFavorite,
                isDownloaded: isDownloaded,
                localPath: localPath,
                progressSeconds: progressSeconds,
                notes: notes,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SermonsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SermonsTable,
      Sermon,
      $$SermonsTableFilterComposer,
      $$SermonsTableOrderingComposer,
      $$SermonsTableAnnotationComposer,
      $$SermonsTableCreateCompanionBuilder,
      $$SermonsTableUpdateCompanionBuilder,
      (Sermon, BaseReferences<_$AppDatabase, $SermonsTable, Sermon>),
      Sermon,
      PrefetchHooks Function()
    >;
typedef $$TranscriptsTableCreateCompanionBuilder =
    TranscriptsCompanion Function({
      Value<int> id,
      required String rawText,
      required String editedText,
    });
typedef $$TranscriptsTableUpdateCompanionBuilder =
    TranscriptsCompanion Function({
      Value<int> id,
      Value<String> rawText,
      Value<String> editedText,
    });

class $$TranscriptsTableFilterComposer
    extends Composer<_$AppDatabase, $TranscriptsTable> {
  $$TranscriptsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get rawText => $composableBuilder(
    column: $table.rawText,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get editedText => $composableBuilder(
    column: $table.editedText,
    builder: (column) => ColumnFilters(column),
  );
}

class $$TranscriptsTableOrderingComposer
    extends Composer<_$AppDatabase, $TranscriptsTable> {
  $$TranscriptsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get rawText => $composableBuilder(
    column: $table.rawText,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get editedText => $composableBuilder(
    column: $table.editedText,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$TranscriptsTableAnnotationComposer
    extends Composer<_$AppDatabase, $TranscriptsTable> {
  $$TranscriptsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get rawText =>
      $composableBuilder(column: $table.rawText, builder: (column) => column);

  GeneratedColumn<String> get editedText => $composableBuilder(
    column: $table.editedText,
    builder: (column) => column,
  );
}

class $$TranscriptsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $TranscriptsTable,
          Transcript,
          $$TranscriptsTableFilterComposer,
          $$TranscriptsTableOrderingComposer,
          $$TranscriptsTableAnnotationComposer,
          $$TranscriptsTableCreateCompanionBuilder,
          $$TranscriptsTableUpdateCompanionBuilder,
          (
            Transcript,
            BaseReferences<_$AppDatabase, $TranscriptsTable, Transcript>,
          ),
          Transcript,
          PrefetchHooks Function()
        > {
  $$TranscriptsTableTableManager(_$AppDatabase db, $TranscriptsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TranscriptsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TranscriptsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TranscriptsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> rawText = const Value.absent(),
                Value<String> editedText = const Value.absent(),
              }) => TranscriptsCompanion(
                id: id,
                rawText: rawText,
                editedText: editedText,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String rawText,
                required String editedText,
              }) => TranscriptsCompanion.insert(
                id: id,
                rawText: rawText,
                editedText: editedText,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$TranscriptsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $TranscriptsTable,
      Transcript,
      $$TranscriptsTableFilterComposer,
      $$TranscriptsTableOrderingComposer,
      $$TranscriptsTableAnnotationComposer,
      $$TranscriptsTableCreateCompanionBuilder,
      $$TranscriptsTableUpdateCompanionBuilder,
      (
        Transcript,
        BaseReferences<_$AppDatabase, $TranscriptsTable, Transcript>,
      ),
      Transcript,
      PrefetchHooks Function()
    >;
typedef $$HighlightsTableCreateCompanionBuilder =
    HighlightsCompanion Function({
      Value<int> id,
      required String verseRef,
      required String color,
      required DateTime createdAt,
    });
typedef $$HighlightsTableUpdateCompanionBuilder =
    HighlightsCompanion Function({
      Value<int> id,
      Value<String> verseRef,
      Value<String> color,
      Value<DateTime> createdAt,
    });

class $$HighlightsTableFilterComposer
    extends Composer<_$AppDatabase, $HighlightsTable> {
  $$HighlightsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get verseRef => $composableBuilder(
    column: $table.verseRef,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnFilters(column),
  );
}

class $$HighlightsTableOrderingComposer
    extends Composer<_$AppDatabase, $HighlightsTable> {
  $$HighlightsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get verseRef => $composableBuilder(
    column: $table.verseRef,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get color => $composableBuilder(
    column: $table.color,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
    column: $table.createdAt,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$HighlightsTableAnnotationComposer
    extends Composer<_$AppDatabase, $HighlightsTable> {
  $$HighlightsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get verseRef =>
      $composableBuilder(column: $table.verseRef, builder: (column) => column);

  GeneratedColumn<String> get color =>
      $composableBuilder(column: $table.color, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$HighlightsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $HighlightsTable,
          Highlight,
          $$HighlightsTableFilterComposer,
          $$HighlightsTableOrderingComposer,
          $$HighlightsTableAnnotationComposer,
          $$HighlightsTableCreateCompanionBuilder,
          $$HighlightsTableUpdateCompanionBuilder,
          (
            Highlight,
            BaseReferences<_$AppDatabase, $HighlightsTable, Highlight>,
          ),
          Highlight,
          PrefetchHooks Function()
        > {
  $$HighlightsTableTableManager(_$AppDatabase db, $HighlightsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$HighlightsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$HighlightsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$HighlightsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> verseRef = const Value.absent(),
                Value<String> color = const Value.absent(),
                Value<DateTime> createdAt = const Value.absent(),
              }) => HighlightsCompanion(
                id: id,
                verseRef: verseRef,
                color: color,
                createdAt: createdAt,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String verseRef,
                required String color,
                required DateTime createdAt,
              }) => HighlightsCompanion.insert(
                id: id,
                verseRef: verseRef,
                color: color,
                createdAt: createdAt,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$HighlightsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $HighlightsTable,
      Highlight,
      $$HighlightsTableFilterComposer,
      $$HighlightsTableOrderingComposer,
      $$HighlightsTableAnnotationComposer,
      $$HighlightsTableCreateCompanionBuilder,
      $$HighlightsTableUpdateCompanionBuilder,
      (Highlight, BaseReferences<_$AppDatabase, $HighlightsTable, Highlight>),
      Highlight,
      PrefetchHooks Function()
    >;
typedef $$ReadingProgressesTableCreateCompanionBuilder =
    ReadingProgressesCompanion Function({
      Value<int> id,
      required String lastReadPosition,
      required String planProgress,
    });
typedef $$ReadingProgressesTableUpdateCompanionBuilder =
    ReadingProgressesCompanion Function({
      Value<int> id,
      Value<String> lastReadPosition,
      Value<String> planProgress,
    });

class $$ReadingProgressesTableFilterComposer
    extends Composer<_$AppDatabase, $ReadingProgressesTable> {
  $$ReadingProgressesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get lastReadPosition => $composableBuilder(
    column: $table.lastReadPosition,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get planProgress => $composableBuilder(
    column: $table.planProgress,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ReadingProgressesTableOrderingComposer
    extends Composer<_$AppDatabase, $ReadingProgressesTable> {
  $$ReadingProgressesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get lastReadPosition => $composableBuilder(
    column: $table.lastReadPosition,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get planProgress => $composableBuilder(
    column: $table.planProgress,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ReadingProgressesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ReadingProgressesTable> {
  $$ReadingProgressesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get lastReadPosition => $composableBuilder(
    column: $table.lastReadPosition,
    builder: (column) => column,
  );

  GeneratedColumn<String> get planProgress => $composableBuilder(
    column: $table.planProgress,
    builder: (column) => column,
  );
}

class $$ReadingProgressesTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $ReadingProgressesTable,
          ReadingProgress,
          $$ReadingProgressesTableFilterComposer,
          $$ReadingProgressesTableOrderingComposer,
          $$ReadingProgressesTableAnnotationComposer,
          $$ReadingProgressesTableCreateCompanionBuilder,
          $$ReadingProgressesTableUpdateCompanionBuilder,
          (
            ReadingProgress,
            BaseReferences<
              _$AppDatabase,
              $ReadingProgressesTable,
              ReadingProgress
            >,
          ),
          ReadingProgress,
          PrefetchHooks Function()
        > {
  $$ReadingProgressesTableTableManager(
    _$AppDatabase db,
    $ReadingProgressesTable table,
  ) : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ReadingProgressesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ReadingProgressesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ReadingProgressesTableAnnotationComposer(
                $db: db,
                $table: table,
              ),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> lastReadPosition = const Value.absent(),
                Value<String> planProgress = const Value.absent(),
              }) => ReadingProgressesCompanion(
                id: id,
                lastReadPosition: lastReadPosition,
                planProgress: planProgress,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String lastReadPosition,
                required String planProgress,
              }) => ReadingProgressesCompanion.insert(
                id: id,
                lastReadPosition: lastReadPosition,
                planProgress: planProgress,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ReadingProgressesTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $ReadingProgressesTable,
      ReadingProgress,
      $$ReadingProgressesTableFilterComposer,
      $$ReadingProgressesTableOrderingComposer,
      $$ReadingProgressesTableAnnotationComposer,
      $$ReadingProgressesTableCreateCompanionBuilder,
      $$ReadingProgressesTableUpdateCompanionBuilder,
      (
        ReadingProgress,
        BaseReferences<_$AppDatabase, $ReadingProgressesTable, ReadingProgress>,
      ),
      ReadingProgress,
      PrefetchHooks Function()
    >;
typedef $$SettingsTableCreateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> theme,
      Value<int> fontSize,
      Value<String> defaultTranslation,
      Value<bool> notificationsEnabled,
    });
typedef $$SettingsTableUpdateCompanionBuilder =
    SettingsCompanion Function({
      Value<int> id,
      Value<String> theme,
      Value<int> fontSize,
      Value<String> defaultTranslation,
      Value<bool> notificationsEnabled,
    });

class $$SettingsTableFilterComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get fontSize => $composableBuilder(
    column: $table.fontSize,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get defaultTranslation => $composableBuilder(
    column: $table.defaultTranslation,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => ColumnFilters(column),
  );
}

class $$SettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
    column: $table.id,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get theme => $composableBuilder(
    column: $table.theme,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get fontSize => $composableBuilder(
    column: $table.fontSize,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get defaultTranslation => $composableBuilder(
    column: $table.defaultTranslation,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$SettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SettingsTable> {
  $$SettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get theme =>
      $composableBuilder(column: $table.theme, builder: (column) => column);

  GeneratedColumn<int> get fontSize =>
      $composableBuilder(column: $table.fontSize, builder: (column) => column);

  GeneratedColumn<String> get defaultTranslation => $composableBuilder(
    column: $table.defaultTranslation,
    builder: (column) => column,
  );

  GeneratedColumn<bool> get notificationsEnabled => $composableBuilder(
    column: $table.notificationsEnabled,
    builder: (column) => column,
  );
}

class $$SettingsTableTableManager
    extends
        RootTableManager<
          _$AppDatabase,
          $SettingsTable,
          Setting,
          $$SettingsTableFilterComposer,
          $$SettingsTableOrderingComposer,
          $$SettingsTableAnnotationComposer,
          $$SettingsTableCreateCompanionBuilder,
          $$SettingsTableUpdateCompanionBuilder,
          (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
          Setting,
          PrefetchHooks Function()
        > {
  $$SettingsTableTableManager(_$AppDatabase db, $SettingsTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> theme = const Value.absent(),
                Value<int> fontSize = const Value.absent(),
                Value<String> defaultTranslation = const Value.absent(),
                Value<bool> notificationsEnabled = const Value.absent(),
              }) => SettingsCompanion(
                id: id,
                theme: theme,
                fontSize: fontSize,
                defaultTranslation: defaultTranslation,
                notificationsEnabled: notificationsEnabled,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> theme = const Value.absent(),
                Value<int> fontSize = const Value.absent(),
                Value<String> defaultTranslation = const Value.absent(),
                Value<bool> notificationsEnabled = const Value.absent(),
              }) => SettingsCompanion.insert(
                id: id,
                theme: theme,
                fontSize: fontSize,
                defaultTranslation: defaultTranslation,
                notificationsEnabled: notificationsEnabled,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$SettingsTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDatabase,
      $SettingsTable,
      Setting,
      $$SettingsTableFilterComposer,
      $$SettingsTableOrderingComposer,
      $$SettingsTableAnnotationComposer,
      $$SettingsTableCreateCompanionBuilder,
      $$SettingsTableUpdateCompanionBuilder,
      (Setting, BaseReferences<_$AppDatabase, $SettingsTable, Setting>),
      Setting,
      PrefetchHooks Function()
    >;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$NotesTableTableManager get notes =>
      $$NotesTableTableManager(_db, _db.notes);
  $$AlarmsTableTableManager get alarms =>
      $$AlarmsTableTableManager(_db, _db.alarms);
  $$SermonsTableTableManager get sermons =>
      $$SermonsTableTableManager(_db, _db.sermons);
  $$TranscriptsTableTableManager get transcripts =>
      $$TranscriptsTableTableManager(_db, _db.transcripts);
  $$HighlightsTableTableManager get highlights =>
      $$HighlightsTableTableManager(_db, _db.highlights);
  $$ReadingProgressesTableTableManager get readingProgresses =>
      $$ReadingProgressesTableTableManager(_db, _db.readingProgresses);
  $$SettingsTableTableManager get settings =>
      $$SettingsTableTableManager(_db, _db.settings);
}
