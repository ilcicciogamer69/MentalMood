// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $EmozioneTable extends Emozione
    with TableInfo<$EmozioneTable, EmozioneData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmozioneTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _imgPathMeta = const VerificationMeta(
    'imgPath',
  );
  @override
  late final GeneratedColumn<String> imgPath = GeneratedColumn<String>(
    'img_path',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valoreMeta = const VerificationMeta('valore');
  @override
  late final GeneratedColumn<int> valore = GeneratedColumn<int>(
    'valore',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [nome, imgPath, valore];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'emozione';
  @override
  VerificationContext validateIntegrity(
    Insertable<EmozioneData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('img_path')) {
      context.handle(
        _imgPathMeta,
        imgPath.isAcceptableOrUnknown(data['img_path']!, _imgPathMeta),
      );
    } else if (isInserting) {
      context.missing(_imgPathMeta);
    }
    if (data.containsKey('valore')) {
      context.handle(
        _valoreMeta,
        valore.isAcceptableOrUnknown(data['valore']!, _valoreMeta),
      );
    } else if (isInserting) {
      context.missing(_valoreMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  EmozioneData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmozioneData(
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      imgPath: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}img_path'],
      )!,
      valore: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}valore'],
      )!,
    );
  }

  @override
  $EmozioneTable createAlias(String alias) {
    return $EmozioneTable(attachedDatabase, alias);
  }
}

class EmozioneData extends DataClass implements Insertable<EmozioneData> {
  final String nome;
  final String imgPath;
  final int valore;
  const EmozioneData({
    required this.nome,
    required this.imgPath,
    required this.valore,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['nome'] = Variable<String>(nome);
    map['img_path'] = Variable<String>(imgPath);
    map['valore'] = Variable<int>(valore);
    return map;
  }

  EmozioneCompanion toCompanion(bool nullToAbsent) {
    return EmozioneCompanion(
      nome: Value(nome),
      imgPath: Value(imgPath),
      valore: Value(valore),
    );
  }

  factory EmozioneData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmozioneData(
      nome: serializer.fromJson<String>(json['nome']),
      imgPath: serializer.fromJson<String>(json['imgPath']),
      valore: serializer.fromJson<int>(json['valore']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'nome': serializer.toJson<String>(nome),
      'imgPath': serializer.toJson<String>(imgPath),
      'valore': serializer.toJson<int>(valore),
    };
  }

  EmozioneData copyWith({String? nome, String? imgPath, int? valore}) =>
      EmozioneData(
        nome: nome ?? this.nome,
        imgPath: imgPath ?? this.imgPath,
        valore: valore ?? this.valore,
      );
  EmozioneData copyWithCompanion(EmozioneCompanion data) {
    return EmozioneData(
      nome: data.nome.present ? data.nome.value : this.nome,
      imgPath: data.imgPath.present ? data.imgPath.value : this.imgPath,
      valore: data.valore.present ? data.valore.value : this.valore,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmozioneData(')
          ..write('nome: $nome, ')
          ..write('imgPath: $imgPath, ')
          ..write('valore: $valore')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(nome, imgPath, valore);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmozioneData &&
          other.nome == this.nome &&
          other.imgPath == this.imgPath &&
          other.valore == this.valore);
}

class EmozioneCompanion extends UpdateCompanion<EmozioneData> {
  final Value<String> nome;
  final Value<String> imgPath;
  final Value<int> valore;
  final Value<int> rowid;
  const EmozioneCompanion({
    this.nome = const Value.absent(),
    this.imgPath = const Value.absent(),
    this.valore = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EmozioneCompanion.insert({
    required String nome,
    required String imgPath,
    required int valore,
    this.rowid = const Value.absent(),
  }) : nome = Value(nome),
       imgPath = Value(imgPath),
       valore = Value(valore);
  static Insertable<EmozioneData> custom({
    Expression<String>? nome,
    Expression<String>? imgPath,
    Expression<int>? valore,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (nome != null) 'nome': nome,
      if (imgPath != null) 'img_path': imgPath,
      if (valore != null) 'valore': valore,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EmozioneCompanion copyWith({
    Value<String>? nome,
    Value<String>? imgPath,
    Value<int>? valore,
    Value<int>? rowid,
  }) {
    return EmozioneCompanion(
      nome: nome ?? this.nome,
      imgPath: imgPath ?? this.imgPath,
      valore: valore ?? this.valore,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (imgPath.present) {
      map['img_path'] = Variable<String>(imgPath.value);
    }
    if (valore.present) {
      map['valore'] = Variable<int>(valore.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmozioneCompanion(')
          ..write('nome: $nome, ')
          ..write('imgPath: $imgPath, ')
          ..write('valore: $valore, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UtenteTable extends Utente with TableInfo<$UtenteTable, UtenteData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UtenteTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _usernameMeta = const VerificationMeta(
    'username',
  );
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
    'username',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
    'nome',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _dataNascitaMeta = const VerificationMeta(
    'dataNascita',
  );
  @override
  late final GeneratedColumn<int> dataNascita = GeneratedColumn<int>(
    'data_nascita',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [username, nome, dataNascita];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'utente';
  @override
  VerificationContext validateIntegrity(
    Insertable<UtenteData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('username')) {
      context.handle(
        _usernameMeta,
        username.isAcceptableOrUnknown(data['username']!, _usernameMeta),
      );
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('nome')) {
      context.handle(
        _nomeMeta,
        nome.isAcceptableOrUnknown(data['nome']!, _nomeMeta),
      );
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('data_nascita')) {
      context.handle(
        _dataNascitaMeta,
        dataNascita.isAcceptableOrUnknown(
          data['data_nascita']!,
          _dataNascitaMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_dataNascitaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UtenteData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UtenteData(
      username: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}username'],
      )!,
      nome: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}nome'],
      )!,
      dataNascita: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}data_nascita'],
      )!,
    );
  }

  @override
  $UtenteTable createAlias(String alias) {
    return $UtenteTable(attachedDatabase, alias);
  }
}

class UtenteData extends DataClass implements Insertable<UtenteData> {
  final String username;
  final String nome;
  final int dataNascita;
  const UtenteData({
    required this.username,
    required this.nome,
    required this.dataNascita,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['username'] = Variable<String>(username);
    map['nome'] = Variable<String>(nome);
    map['data_nascita'] = Variable<int>(dataNascita);
    return map;
  }

  UtenteCompanion toCompanion(bool nullToAbsent) {
    return UtenteCompanion(
      username: Value(username),
      nome: Value(nome),
      dataNascita: Value(dataNascita),
    );
  }

  factory UtenteData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UtenteData(
      username: serializer.fromJson<String>(json['username']),
      nome: serializer.fromJson<String>(json['nome']),
      dataNascita: serializer.fromJson<int>(json['dataNascita']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'username': serializer.toJson<String>(username),
      'nome': serializer.toJson<String>(nome),
      'dataNascita': serializer.toJson<int>(dataNascita),
    };
  }

  UtenteData copyWith({String? username, String? nome, int? dataNascita}) =>
      UtenteData(
        username: username ?? this.username,
        nome: nome ?? this.nome,
        dataNascita: dataNascita ?? this.dataNascita,
      );
  UtenteData copyWithCompanion(UtenteCompanion data) {
    return UtenteData(
      username: data.username.present ? data.username.value : this.username,
      nome: data.nome.present ? data.nome.value : this.nome,
      dataNascita: data.dataNascita.present
          ? data.dataNascita.value
          : this.dataNascita,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UtenteData(')
          ..write('username: $username, ')
          ..write('nome: $nome, ')
          ..write('dataNascita: $dataNascita')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(username, nome, dataNascita);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UtenteData &&
          other.username == this.username &&
          other.nome == this.nome &&
          other.dataNascita == this.dataNascita);
}

class UtenteCompanion extends UpdateCompanion<UtenteData> {
  final Value<String> username;
  final Value<String> nome;
  final Value<int> dataNascita;
  final Value<int> rowid;
  const UtenteCompanion({
    this.username = const Value.absent(),
    this.nome = const Value.absent(),
    this.dataNascita = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UtenteCompanion.insert({
    required String username,
    required String nome,
    required int dataNascita,
    this.rowid = const Value.absent(),
  }) : username = Value(username),
       nome = Value(nome),
       dataNascita = Value(dataNascita);
  static Insertable<UtenteData> custom({
    Expression<String>? username,
    Expression<String>? nome,
    Expression<int>? dataNascita,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (username != null) 'username': username,
      if (nome != null) 'nome': nome,
      if (dataNascita != null) 'data_nascita': dataNascita,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UtenteCompanion copyWith({
    Value<String>? username,
    Value<String>? nome,
    Value<int>? dataNascita,
    Value<int>? rowid,
  }) {
    return UtenteCompanion(
      username: username ?? this.username,
      nome: nome ?? this.nome,
      dataNascita: dataNascita ?? this.dataNascita,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (nome.present) {
      map['nome'] = Variable<String>(nome.value);
    }
    if (dataNascita.present) {
      map['data_nascita'] = Variable<int>(dataNascita.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UtenteCompanion(')
          ..write('username: $username, ')
          ..write('nome: $nome, ')
          ..write('dataNascita: $dataNascita, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ConsiglioTable extends Consiglio
    with TableInfo<$ConsiglioTable, ConsiglioData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ConsiglioTable(this.attachedDatabase, [this._alias]);
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
  static const VerificationMeta _testoMeta = const VerificationMeta('testo');
  @override
  late final GeneratedColumn<String> testo = GeneratedColumn<String>(
    'testo',
    aliasedName,
    false,
    type: DriftSqlType.string,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valoreInizialeMeta = const VerificationMeta(
    'valoreIniziale',
  );
  @override
  late final GeneratedColumn<int> valoreIniziale = GeneratedColumn<int>(
    'valore_iniziale',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  static const VerificationMeta _valoreFinaleMeta = const VerificationMeta(
    'valoreFinale',
  );
  @override
  late final GeneratedColumn<int> valoreFinale = GeneratedColumn<int>(
    'valore_finale',
    aliasedName,
    false,
    type: DriftSqlType.int,
    requiredDuringInsert: true,
  );
  @override
  List<GeneratedColumn> get $columns => [
    id,
    testo,
    valoreIniziale,
    valoreFinale,
  ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'consiglio';
  @override
  VerificationContext validateIntegrity(
    Insertable<ConsiglioData> instance, {
    bool isInserting = false,
  }) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('testo')) {
      context.handle(
        _testoMeta,
        testo.isAcceptableOrUnknown(data['testo']!, _testoMeta),
      );
    } else if (isInserting) {
      context.missing(_testoMeta);
    }
    if (data.containsKey('valore_iniziale')) {
      context.handle(
        _valoreInizialeMeta,
        valoreIniziale.isAcceptableOrUnknown(
          data['valore_iniziale']!,
          _valoreInizialeMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_valoreInizialeMeta);
    }
    if (data.containsKey('valore_finale')) {
      context.handle(
        _valoreFinaleMeta,
        valoreFinale.isAcceptableOrUnknown(
          data['valore_finale']!,
          _valoreFinaleMeta,
        ),
      );
    } else if (isInserting) {
      context.missing(_valoreFinaleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ConsiglioData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ConsiglioData(
      id: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}id'],
      )!,
      testo: attachedDatabase.typeMapping.read(
        DriftSqlType.string,
        data['${effectivePrefix}testo'],
      )!,
      valoreIniziale: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}valore_iniziale'],
      )!,
      valoreFinale: attachedDatabase.typeMapping.read(
        DriftSqlType.int,
        data['${effectivePrefix}valore_finale'],
      )!,
    );
  }

  @override
  $ConsiglioTable createAlias(String alias) {
    return $ConsiglioTable(attachedDatabase, alias);
  }
}

class ConsiglioData extends DataClass implements Insertable<ConsiglioData> {
  final int id;
  final String testo;
  final int valoreIniziale;
  final int valoreFinale;
  const ConsiglioData({
    required this.id,
    required this.testo,
    required this.valoreIniziale,
    required this.valoreFinale,
  });
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['testo'] = Variable<String>(testo);
    map['valore_iniziale'] = Variable<int>(valoreIniziale);
    map['valore_finale'] = Variable<int>(valoreFinale);
    return map;
  }

  ConsiglioCompanion toCompanion(bool nullToAbsent) {
    return ConsiglioCompanion(
      id: Value(id),
      testo: Value(testo),
      valoreIniziale: Value(valoreIniziale),
      valoreFinale: Value(valoreFinale),
    );
  }

  factory ConsiglioData.fromJson(
    Map<String, dynamic> json, {
    ValueSerializer? serializer,
  }) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ConsiglioData(
      id: serializer.fromJson<int>(json['id']),
      testo: serializer.fromJson<String>(json['testo']),
      valoreIniziale: serializer.fromJson<int>(json['valoreIniziale']),
      valoreFinale: serializer.fromJson<int>(json['valoreFinale']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'testo': serializer.toJson<String>(testo),
      'valoreIniziale': serializer.toJson<int>(valoreIniziale),
      'valoreFinale': serializer.toJson<int>(valoreFinale),
    };
  }

  ConsiglioData copyWith({
    int? id,
    String? testo,
    int? valoreIniziale,
    int? valoreFinale,
  }) => ConsiglioData(
    id: id ?? this.id,
    testo: testo ?? this.testo,
    valoreIniziale: valoreIniziale ?? this.valoreIniziale,
    valoreFinale: valoreFinale ?? this.valoreFinale,
  );
  ConsiglioData copyWithCompanion(ConsiglioCompanion data) {
    return ConsiglioData(
      id: data.id.present ? data.id.value : this.id,
      testo: data.testo.present ? data.testo.value : this.testo,
      valoreIniziale: data.valoreIniziale.present
          ? data.valoreIniziale.value
          : this.valoreIniziale,
      valoreFinale: data.valoreFinale.present
          ? data.valoreFinale.value
          : this.valoreFinale,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ConsiglioData(')
          ..write('id: $id, ')
          ..write('testo: $testo, ')
          ..write('valoreIniziale: $valoreIniziale, ')
          ..write('valoreFinale: $valoreFinale')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, testo, valoreIniziale, valoreFinale);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ConsiglioData &&
          other.id == this.id &&
          other.testo == this.testo &&
          other.valoreIniziale == this.valoreIniziale &&
          other.valoreFinale == this.valoreFinale);
}

class ConsiglioCompanion extends UpdateCompanion<ConsiglioData> {
  final Value<int> id;
  final Value<String> testo;
  final Value<int> valoreIniziale;
  final Value<int> valoreFinale;
  const ConsiglioCompanion({
    this.id = const Value.absent(),
    this.testo = const Value.absent(),
    this.valoreIniziale = const Value.absent(),
    this.valoreFinale = const Value.absent(),
  });
  ConsiglioCompanion.insert({
    this.id = const Value.absent(),
    required String testo,
    required int valoreIniziale,
    required int valoreFinale,
  }) : testo = Value(testo),
       valoreIniziale = Value(valoreIniziale),
       valoreFinale = Value(valoreFinale);
  static Insertable<ConsiglioData> custom({
    Expression<int>? id,
    Expression<String>? testo,
    Expression<int>? valoreIniziale,
    Expression<int>? valoreFinale,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (testo != null) 'testo': testo,
      if (valoreIniziale != null) 'valore_iniziale': valoreIniziale,
      if (valoreFinale != null) 'valore_finale': valoreFinale,
    });
  }

  ConsiglioCompanion copyWith({
    Value<int>? id,
    Value<String>? testo,
    Value<int>? valoreIniziale,
    Value<int>? valoreFinale,
  }) {
    return ConsiglioCompanion(
      id: id ?? this.id,
      testo: testo ?? this.testo,
      valoreIniziale: valoreIniziale ?? this.valoreIniziale,
      valoreFinale: valoreFinale ?? this.valoreFinale,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (testo.present) {
      map['testo'] = Variable<String>(testo.value);
    }
    if (valoreIniziale.present) {
      map['valore_iniziale'] = Variable<int>(valoreIniziale.value);
    }
    if (valoreFinale.present) {
      map['valore_finale'] = Variable<int>(valoreFinale.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ConsiglioCompanion(')
          ..write('id: $id, ')
          ..write('testo: $testo, ')
          ..write('valoreIniziale: $valoreIniziale, ')
          ..write('valoreFinale: $valoreFinale')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDataBase extends GeneratedDatabase {
  _$AppDataBase(QueryExecutor e) : super(e);
  $AppDataBaseManager get managers => $AppDataBaseManager(this);
  late final $EmozioneTable emozione = $EmozioneTable(this);
  late final $UtenteTable utente = $UtenteTable(this);
  late final $ConsiglioTable consiglio = $ConsiglioTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
    emozione,
    utente,
    consiglio,
  ];
}

typedef $$EmozioneTableCreateCompanionBuilder =
    EmozioneCompanion Function({
      required String nome,
      required String imgPath,
      required int valore,
      Value<int> rowid,
    });
typedef $$EmozioneTableUpdateCompanionBuilder =
    EmozioneCompanion Function({
      Value<String> nome,
      Value<String> imgPath,
      Value<int> valore,
      Value<int> rowid,
    });

class $$EmozioneTableFilterComposer
    extends Composer<_$AppDataBase, $EmozioneTable> {
  $$EmozioneTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get imgPath => $composableBuilder(
    column: $table.imgPath,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get valore => $composableBuilder(
    column: $table.valore,
    builder: (column) => ColumnFilters(column),
  );
}

class $$EmozioneTableOrderingComposer
    extends Composer<_$AppDataBase, $EmozioneTable> {
  $$EmozioneTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get imgPath => $composableBuilder(
    column: $table.imgPath,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get valore => $composableBuilder(
    column: $table.valore,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$EmozioneTableAnnotationComposer
    extends Composer<_$AppDataBase, $EmozioneTable> {
  $$EmozioneTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<String> get imgPath =>
      $composableBuilder(column: $table.imgPath, builder: (column) => column);

  GeneratedColumn<int> get valore =>
      $composableBuilder(column: $table.valore, builder: (column) => column);
}

class $$EmozioneTableTableManager
    extends
        RootTableManager<
          _$AppDataBase,
          $EmozioneTable,
          EmozioneData,
          $$EmozioneTableFilterComposer,
          $$EmozioneTableOrderingComposer,
          $$EmozioneTableAnnotationComposer,
          $$EmozioneTableCreateCompanionBuilder,
          $$EmozioneTableUpdateCompanionBuilder,
          (
            EmozioneData,
            BaseReferences<_$AppDataBase, $EmozioneTable, EmozioneData>,
          ),
          EmozioneData,
          PrefetchHooks Function()
        > {
  $$EmozioneTableTableManager(_$AppDataBase db, $EmozioneTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmozioneTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmozioneTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmozioneTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> nome = const Value.absent(),
                Value<String> imgPath = const Value.absent(),
                Value<int> valore = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => EmozioneCompanion(
                nome: nome,
                imgPath: imgPath,
                valore: valore,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String nome,
                required String imgPath,
                required int valore,
                Value<int> rowid = const Value.absent(),
              }) => EmozioneCompanion.insert(
                nome: nome,
                imgPath: imgPath,
                valore: valore,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$EmozioneTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDataBase,
      $EmozioneTable,
      EmozioneData,
      $$EmozioneTableFilterComposer,
      $$EmozioneTableOrderingComposer,
      $$EmozioneTableAnnotationComposer,
      $$EmozioneTableCreateCompanionBuilder,
      $$EmozioneTableUpdateCompanionBuilder,
      (
        EmozioneData,
        BaseReferences<_$AppDataBase, $EmozioneTable, EmozioneData>,
      ),
      EmozioneData,
      PrefetchHooks Function()
    >;
typedef $$UtenteTableCreateCompanionBuilder =
    UtenteCompanion Function({
      required String username,
      required String nome,
      required int dataNascita,
      Value<int> rowid,
    });
typedef $$UtenteTableUpdateCompanionBuilder =
    UtenteCompanion Function({
      Value<String> username,
      Value<String> nome,
      Value<int> dataNascita,
      Value<int> rowid,
    });

class $$UtenteTableFilterComposer
    extends Composer<_$AppDataBase, $UtenteTable> {
  $$UtenteTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get dataNascita => $composableBuilder(
    column: $table.dataNascita,
    builder: (column) => ColumnFilters(column),
  );
}

class $$UtenteTableOrderingComposer
    extends Composer<_$AppDataBase, $UtenteTable> {
  $$UtenteTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get username => $composableBuilder(
    column: $table.username,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<String> get nome => $composableBuilder(
    column: $table.nome,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get dataNascita => $composableBuilder(
    column: $table.dataNascita,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$UtenteTableAnnotationComposer
    extends Composer<_$AppDataBase, $UtenteTable> {
  $$UtenteTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get nome =>
      $composableBuilder(column: $table.nome, builder: (column) => column);

  GeneratedColumn<int> get dataNascita => $composableBuilder(
    column: $table.dataNascita,
    builder: (column) => column,
  );
}

class $$UtenteTableTableManager
    extends
        RootTableManager<
          _$AppDataBase,
          $UtenteTable,
          UtenteData,
          $$UtenteTableFilterComposer,
          $$UtenteTableOrderingComposer,
          $$UtenteTableAnnotationComposer,
          $$UtenteTableCreateCompanionBuilder,
          $$UtenteTableUpdateCompanionBuilder,
          (UtenteData, BaseReferences<_$AppDataBase, $UtenteTable, UtenteData>),
          UtenteData,
          PrefetchHooks Function()
        > {
  $$UtenteTableTableManager(_$AppDataBase db, $UtenteTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UtenteTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UtenteTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UtenteTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<String> username = const Value.absent(),
                Value<String> nome = const Value.absent(),
                Value<int> dataNascita = const Value.absent(),
                Value<int> rowid = const Value.absent(),
              }) => UtenteCompanion(
                username: username,
                nome: nome,
                dataNascita: dataNascita,
                rowid: rowid,
              ),
          createCompanionCallback:
              ({
                required String username,
                required String nome,
                required int dataNascita,
                Value<int> rowid = const Value.absent(),
              }) => UtenteCompanion.insert(
                username: username,
                nome: nome,
                dataNascita: dataNascita,
                rowid: rowid,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$UtenteTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDataBase,
      $UtenteTable,
      UtenteData,
      $$UtenteTableFilterComposer,
      $$UtenteTableOrderingComposer,
      $$UtenteTableAnnotationComposer,
      $$UtenteTableCreateCompanionBuilder,
      $$UtenteTableUpdateCompanionBuilder,
      (UtenteData, BaseReferences<_$AppDataBase, $UtenteTable, UtenteData>),
      UtenteData,
      PrefetchHooks Function()
    >;
typedef $$ConsiglioTableCreateCompanionBuilder =
    ConsiglioCompanion Function({
      Value<int> id,
      required String testo,
      required int valoreIniziale,
      required int valoreFinale,
    });
typedef $$ConsiglioTableUpdateCompanionBuilder =
    ConsiglioCompanion Function({
      Value<int> id,
      Value<String> testo,
      Value<int> valoreIniziale,
      Value<int> valoreFinale,
    });

class $$ConsiglioTableFilterComposer
    extends Composer<_$AppDataBase, $ConsiglioTable> {
  $$ConsiglioTableFilterComposer({
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

  ColumnFilters<String> get testo => $composableBuilder(
    column: $table.testo,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get valoreIniziale => $composableBuilder(
    column: $table.valoreIniziale,
    builder: (column) => ColumnFilters(column),
  );

  ColumnFilters<int> get valoreFinale => $composableBuilder(
    column: $table.valoreFinale,
    builder: (column) => ColumnFilters(column),
  );
}

class $$ConsiglioTableOrderingComposer
    extends Composer<_$AppDataBase, $ConsiglioTable> {
  $$ConsiglioTableOrderingComposer({
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

  ColumnOrderings<String> get testo => $composableBuilder(
    column: $table.testo,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get valoreIniziale => $composableBuilder(
    column: $table.valoreIniziale,
    builder: (column) => ColumnOrderings(column),
  );

  ColumnOrderings<int> get valoreFinale => $composableBuilder(
    column: $table.valoreFinale,
    builder: (column) => ColumnOrderings(column),
  );
}

class $$ConsiglioTableAnnotationComposer
    extends Composer<_$AppDataBase, $ConsiglioTable> {
  $$ConsiglioTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get testo =>
      $composableBuilder(column: $table.testo, builder: (column) => column);

  GeneratedColumn<int> get valoreIniziale => $composableBuilder(
    column: $table.valoreIniziale,
    builder: (column) => column,
  );

  GeneratedColumn<int> get valoreFinale => $composableBuilder(
    column: $table.valoreFinale,
    builder: (column) => column,
  );
}

class $$ConsiglioTableTableManager
    extends
        RootTableManager<
          _$AppDataBase,
          $ConsiglioTable,
          ConsiglioData,
          $$ConsiglioTableFilterComposer,
          $$ConsiglioTableOrderingComposer,
          $$ConsiglioTableAnnotationComposer,
          $$ConsiglioTableCreateCompanionBuilder,
          $$ConsiglioTableUpdateCompanionBuilder,
          (
            ConsiglioData,
            BaseReferences<_$AppDataBase, $ConsiglioTable, ConsiglioData>,
          ),
          ConsiglioData,
          PrefetchHooks Function()
        > {
  $$ConsiglioTableTableManager(_$AppDataBase db, $ConsiglioTable table)
    : super(
        TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ConsiglioTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ConsiglioTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ConsiglioTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                Value<String> testo = const Value.absent(),
                Value<int> valoreIniziale = const Value.absent(),
                Value<int> valoreFinale = const Value.absent(),
              }) => ConsiglioCompanion(
                id: id,
                testo: testo,
                valoreIniziale: valoreIniziale,
                valoreFinale: valoreFinale,
              ),
          createCompanionCallback:
              ({
                Value<int> id = const Value.absent(),
                required String testo,
                required int valoreIniziale,
                required int valoreFinale,
              }) => ConsiglioCompanion.insert(
                id: id,
                testo: testo,
                valoreIniziale: valoreIniziale,
                valoreFinale: valoreFinale,
              ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ),
      );
}

typedef $$ConsiglioTableProcessedTableManager =
    ProcessedTableManager<
      _$AppDataBase,
      $ConsiglioTable,
      ConsiglioData,
      $$ConsiglioTableFilterComposer,
      $$ConsiglioTableOrderingComposer,
      $$ConsiglioTableAnnotationComposer,
      $$ConsiglioTableCreateCompanionBuilder,
      $$ConsiglioTableUpdateCompanionBuilder,
      (
        ConsiglioData,
        BaseReferences<_$AppDataBase, $ConsiglioTable, ConsiglioData>,
      ),
      ConsiglioData,
      PrefetchHooks Function()
    >;

class $AppDataBaseManager {
  final _$AppDataBase _db;
  $AppDataBaseManager(this._db);
  $$EmozioneTableTableManager get emozione =>
      $$EmozioneTableTableManager(_db, _db.emozione);
  $$UtenteTableTableManager get utente =>
      $$UtenteTableTableManager(_db, _db.utente);
  $$ConsiglioTableTableManager get consiglio =>
      $$ConsiglioTableTableManager(_db, _db.consiglio);
}
