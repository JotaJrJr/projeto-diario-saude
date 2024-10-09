// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_db.dart';

// ignore_for_file: type=lint
class $DiarioTableTable extends DiarioTable
    with TableInfo<$DiarioTableTable, DiarioTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DiarioTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idUsuarioMeta =
      const VerificationMeta('idUsuario');
  @override
  late final GeneratedColumn<String> idUsuario = GeneratedColumn<String>(
      'ID_USUARIO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<int> data = GeneratedColumn<int>(
      'DATA', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, idUsuario, data];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'diario_table';
  @override
  VerificationContext validateIntegrity(Insertable<DiarioTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ID_USUARIO')) {
      context.handle(_idUsuarioMeta,
          idUsuario.isAcceptableOrUnknown(data['ID_USUARIO']!, _idUsuarioMeta));
    }
    if (data.containsKey('DATA')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['DATA']!, _dataMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DiarioTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DiarioTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      idUsuario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_USUARIO']),
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATA']),
    );
  }

  @override
  $DiarioTableTable createAlias(String alias) {
    return $DiarioTableTable(attachedDatabase, alias);
  }
}

class DiarioTableData extends DataClass implements Insertable<DiarioTableData> {
  final String id;
  final String? idUsuario;
  final int? data;
  const DiarioTableData({required this.id, this.idUsuario, this.data});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || idUsuario != null) {
      map['ID_USUARIO'] = Variable<String>(idUsuario);
    }
    if (!nullToAbsent || data != null) {
      map['DATA'] = Variable<int>(data);
    }
    return map;
  }

  DiarioTableCompanion toCompanion(bool nullToAbsent) {
    return DiarioTableCompanion(
      id: Value(id),
      idUsuario: idUsuario == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuario),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
    );
  }

  factory DiarioTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiarioTableData(
      id: serializer.fromJson<String>(json['id']),
      idUsuario: serializer.fromJson<String?>(json['idUsuario']),
      data: serializer.fromJson<int?>(json['data']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idUsuario': serializer.toJson<String?>(idUsuario),
      'data': serializer.toJson<int?>(data),
    };
  }

  DiarioTableData copyWith(
          {String? id,
          Value<String?> idUsuario = const Value.absent(),
          Value<int?> data = const Value.absent()}) =>
      DiarioTableData(
        id: id ?? this.id,
        idUsuario: idUsuario.present ? idUsuario.value : this.idUsuario,
        data: data.present ? data.value : this.data,
      );
  DiarioTableData copyWithCompanion(DiarioTableCompanion data) {
    return DiarioTableData(
      id: data.id.present ? data.id.value : this.id,
      idUsuario: data.idUsuario.present ? data.idUsuario.value : this.idUsuario,
      data: data.data.present ? data.data.value : this.data,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DiarioTableData(')
          ..write('id: $id, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('data: $data')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idUsuario, data);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiarioTableData &&
          other.id == this.id &&
          other.idUsuario == this.idUsuario &&
          other.data == this.data);
}

class DiarioTableCompanion extends UpdateCompanion<DiarioTableData> {
  final Value<String> id;
  final Value<String?> idUsuario;
  final Value<int?> data;
  final Value<int> rowid;
  const DiarioTableCompanion({
    this.id = const Value.absent(),
    this.idUsuario = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  DiarioTableCompanion.insert({
    required String id,
    this.idUsuario = const Value.absent(),
    this.data = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<DiarioTableData> custom({
    Expression<String>? id,
    Expression<String>? idUsuario,
    Expression<int>? data,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (idUsuario != null) 'ID_USUARIO': idUsuario,
      if (data != null) 'DATA': data,
      if (rowid != null) 'rowid': rowid,
    });
  }

  DiarioTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? idUsuario,
      Value<int?>? data,
      Value<int>? rowid}) {
    return DiarioTableCompanion(
      id: id ?? this.id,
      idUsuario: idUsuario ?? this.idUsuario,
      data: data ?? this.data,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (idUsuario.present) {
      map['ID_USUARIO'] = Variable<String>(idUsuario.value);
    }
    if (data.present) {
      map['DATA'] = Variable<int>(data.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiarioTableCompanion(')
          ..write('id: $id, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('data: $data, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $CaracteristicaTableTable extends CaracteristicaTable
    with TableInfo<$CaracteristicaTableTable, CaracteristicaTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CaracteristicaTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'NOME', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'DESCRICAO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idTipoDiarioMeta =
      const VerificationMeta('idTipoDiario');
  @override
  late final GeneratedColumn<String> idTipoDiario = GeneratedColumn<String>(
      'ID_TIPO_DIARIO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _idDiarioMeta =
      const VerificationMeta('idDiario');
  @override
  late final GeneratedColumn<String> idDiario = GeneratedColumn<String>(
      'ID_DIARIO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, nome, descricao, idTipoDiario, idDiario];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'caracteristica_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<CaracteristicaTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('NOME')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['NOME']!, _nomeMeta));
    }
    if (data.containsKey('DESCRICAO')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['DESCRICAO']!, _descricaoMeta));
    }
    if (data.containsKey('ID_TIPO_DIARIO')) {
      context.handle(
          _idTipoDiarioMeta,
          idTipoDiario.isAcceptableOrUnknown(
              data['ID_TIPO_DIARIO']!, _idTipoDiarioMeta));
    }
    if (data.containsKey('ID_DIARIO')) {
      context.handle(_idDiarioMeta,
          idDiario.isAcceptableOrUnknown(data['ID_DIARIO']!, _idDiarioMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CaracteristicaTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CaracteristicaTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
      idTipoDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_TIPO_DIARIO']),
      idDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_DIARIO']),
    );
  }

  @override
  $CaracteristicaTableTable createAlias(String alias) {
    return $CaracteristicaTableTable(attachedDatabase, alias);
  }
}

class CaracteristicaTableData extends DataClass
    implements Insertable<CaracteristicaTableData> {
  final String id;
  final String? nome;
  final String? descricao;
  final String? idTipoDiario;
  final String? idDiario;
  const CaracteristicaTableData(
      {required this.id,
      this.nome,
      this.descricao,
      this.idTipoDiario,
      this.idDiario});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || nome != null) {
      map['NOME'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || idTipoDiario != null) {
      map['ID_TIPO_DIARIO'] = Variable<String>(idTipoDiario);
    }
    if (!nullToAbsent || idDiario != null) {
      map['ID_DIARIO'] = Variable<String>(idDiario);
    }
    return map;
  }

  CaracteristicaTableCompanion toCompanion(bool nullToAbsent) {
    return CaracteristicaTableCompanion(
      id: Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      idTipoDiario: idTipoDiario == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoDiario),
      idDiario: idDiario == null && nullToAbsent
          ? const Value.absent()
          : Value(idDiario),
    );
  }

  factory CaracteristicaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CaracteristicaTableData(
      id: serializer.fromJson<String>(json['id']),
      nome: serializer.fromJson<String?>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      idTipoDiario: serializer.fromJson<String?>(json['idTipoDiario']),
      idDiario: serializer.fromJson<String?>(json['idDiario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'nome': serializer.toJson<String?>(nome),
      'descricao': serializer.toJson<String?>(descricao),
      'idTipoDiario': serializer.toJson<String?>(idTipoDiario),
      'idDiario': serializer.toJson<String?>(idDiario),
    };
  }

  CaracteristicaTableData copyWith(
          {String? id,
          Value<String?> nome = const Value.absent(),
          Value<String?> descricao = const Value.absent(),
          Value<String?> idTipoDiario = const Value.absent(),
          Value<String?> idDiario = const Value.absent()}) =>
      CaracteristicaTableData(
        id: id ?? this.id,
        nome: nome.present ? nome.value : this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
        idTipoDiario:
            idTipoDiario.present ? idTipoDiario.value : this.idTipoDiario,
        idDiario: idDiario.present ? idDiario.value : this.idDiario,
      );
  CaracteristicaTableData copyWithCompanion(CaracteristicaTableCompanion data) {
    return CaracteristicaTableData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      idTipoDiario: data.idTipoDiario.present
          ? data.idTipoDiario.value
          : this.idTipoDiario,
      idDiario: data.idDiario.present ? data.idDiario.value : this.idDiario,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CaracteristicaTableData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('idTipoDiario: $idTipoDiario, ')
          ..write('idDiario: $idDiario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, descricao, idTipoDiario, idDiario);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CaracteristicaTableData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.idTipoDiario == this.idTipoDiario &&
          other.idDiario == this.idDiario);
}

class CaracteristicaTableCompanion
    extends UpdateCompanion<CaracteristicaTableData> {
  final Value<String> id;
  final Value<String?> nome;
  final Value<String?> descricao;
  final Value<String?> idTipoDiario;
  final Value<String?> idDiario;
  final Value<int> rowid;
  const CaracteristicaTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
    this.idDiario = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CaracteristicaTableCompanion.insert({
    required String id,
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
    this.idDiario = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<CaracteristicaTableData> custom({
    Expression<String>? id,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<String>? idTipoDiario,
    Expression<String>? idDiario,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'DESCRICAO': descricao,
      if (idTipoDiario != null) 'ID_TIPO_DIARIO': idTipoDiario,
      if (idDiario != null) 'ID_DIARIO': idDiario,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CaracteristicaTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? nome,
      Value<String?>? descricao,
      Value<String?>? idTipoDiario,
      Value<String?>? idDiario,
      Value<int>? rowid}) {
    return CaracteristicaTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      idTipoDiario: idTipoDiario ?? this.idTipoDiario,
      idDiario: idDiario ?? this.idDiario,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (idTipoDiario.present) {
      map['ID_TIPO_DIARIO'] = Variable<String>(idTipoDiario.value);
    }
    if (idDiario.present) {
      map['ID_DIARIO'] = Variable<String>(idDiario.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CaracteristicaTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('idTipoDiario: $idTipoDiario, ')
          ..write('idDiario: $idDiario, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $FotoTableTable extends FotoTable
    with TableInfo<$FotoTableTable, FotoTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FotoTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _caminhoMeta =
      const VerificationMeta('caminho');
  @override
  late final GeneratedColumn<String> caminho = GeneratedColumn<String>(
      'CAMINHO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'DESCRICAO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<int> date = GeneratedColumn<int>(
      'DATE', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _idTipoDiarioMeta =
      const VerificationMeta('idTipoDiario');
  @override
  late final GeneratedColumn<int> idTipoDiario = GeneratedColumn<int>(
      'ID_TIPO_DIARIO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, caminho, descricao, date, idTipoDiario];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'foto_table';
  @override
  VerificationContext validateIntegrity(Insertable<FotoTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('CAMINHO')) {
      context.handle(_caminhoMeta,
          caminho.isAcceptableOrUnknown(data['CAMINHO']!, _caminhoMeta));
    }
    if (data.containsKey('DESCRICAO')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['DESCRICAO']!, _descricaoMeta));
    }
    if (data.containsKey('DATE')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['DATE']!, _dateMeta));
    }
    if (data.containsKey('ID_TIPO_DIARIO')) {
      context.handle(
          _idTipoDiarioMeta,
          idTipoDiario.isAcceptableOrUnknown(
              data['ID_TIPO_DIARIO']!, _idTipoDiarioMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FotoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FotoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      caminho: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CAMINHO']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATE']),
      idTipoDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID_TIPO_DIARIO']),
    );
  }

  @override
  $FotoTableTable createAlias(String alias) {
    return $FotoTableTable(attachedDatabase, alias);
  }
}

class FotoTableData extends DataClass implements Insertable<FotoTableData> {
  final String id;
  final String? caminho;
  final String? descricao;
  final int? date;
  final int? idTipoDiario;
  const FotoTableData(
      {required this.id,
      this.caminho,
      this.descricao,
      this.date,
      this.idTipoDiario});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || caminho != null) {
      map['CAMINHO'] = Variable<String>(caminho);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || date != null) {
      map['DATE'] = Variable<int>(date);
    }
    if (!nullToAbsent || idTipoDiario != null) {
      map['ID_TIPO_DIARIO'] = Variable<int>(idTipoDiario);
    }
    return map;
  }

  FotoTableCompanion toCompanion(bool nullToAbsent) {
    return FotoTableCompanion(
      id: Value(id),
      caminho: caminho == null && nullToAbsent
          ? const Value.absent()
          : Value(caminho),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      date: date == null && nullToAbsent ? const Value.absent() : Value(date),
      idTipoDiario: idTipoDiario == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoDiario),
    );
  }

  factory FotoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FotoTableData(
      id: serializer.fromJson<String>(json['id']),
      caminho: serializer.fromJson<String?>(json['caminho']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      date: serializer.fromJson<int?>(json['date']),
      idTipoDiario: serializer.fromJson<int?>(json['idTipoDiario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'caminho': serializer.toJson<String?>(caminho),
      'descricao': serializer.toJson<String?>(descricao),
      'date': serializer.toJson<int?>(date),
      'idTipoDiario': serializer.toJson<int?>(idTipoDiario),
    };
  }

  FotoTableData copyWith(
          {String? id,
          Value<String?> caminho = const Value.absent(),
          Value<String?> descricao = const Value.absent(),
          Value<int?> date = const Value.absent(),
          Value<int?> idTipoDiario = const Value.absent()}) =>
      FotoTableData(
        id: id ?? this.id,
        caminho: caminho.present ? caminho.value : this.caminho,
        descricao: descricao.present ? descricao.value : this.descricao,
        date: date.present ? date.value : this.date,
        idTipoDiario:
            idTipoDiario.present ? idTipoDiario.value : this.idTipoDiario,
      );
  FotoTableData copyWithCompanion(FotoTableCompanion data) {
    return FotoTableData(
      id: data.id.present ? data.id.value : this.id,
      caminho: data.caminho.present ? data.caminho.value : this.caminho,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      date: data.date.present ? data.date.value : this.date,
      idTipoDiario: data.idTipoDiario.present
          ? data.idTipoDiario.value
          : this.idTipoDiario,
    );
  }

  @override
  String toString() {
    return (StringBuffer('FotoTableData(')
          ..write('id: $id, ')
          ..write('caminho: $caminho, ')
          ..write('descricao: $descricao, ')
          ..write('date: $date, ')
          ..write('idTipoDiario: $idTipoDiario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, caminho, descricao, date, idTipoDiario);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FotoTableData &&
          other.id == this.id &&
          other.caminho == this.caminho &&
          other.descricao == this.descricao &&
          other.date == this.date &&
          other.idTipoDiario == this.idTipoDiario);
}

class FotoTableCompanion extends UpdateCompanion<FotoTableData> {
  final Value<String> id;
  final Value<String?> caminho;
  final Value<String?> descricao;
  final Value<int?> date;
  final Value<int?> idTipoDiario;
  final Value<int> rowid;
  const FotoTableCompanion({
    this.id = const Value.absent(),
    this.caminho = const Value.absent(),
    this.descricao = const Value.absent(),
    this.date = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FotoTableCompanion.insert({
    required String id,
    this.caminho = const Value.absent(),
    this.descricao = const Value.absent(),
    this.date = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<FotoTableData> custom({
    Expression<String>? id,
    Expression<String>? caminho,
    Expression<String>? descricao,
    Expression<int>? date,
    Expression<int>? idTipoDiario,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (caminho != null) 'CAMINHO': caminho,
      if (descricao != null) 'DESCRICAO': descricao,
      if (date != null) 'DATE': date,
      if (idTipoDiario != null) 'ID_TIPO_DIARIO': idTipoDiario,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FotoTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? caminho,
      Value<String?>? descricao,
      Value<int?>? date,
      Value<int?>? idTipoDiario,
      Value<int>? rowid}) {
    return FotoTableCompanion(
      id: id ?? this.id,
      caminho: caminho ?? this.caminho,
      descricao: descricao ?? this.descricao,
      date: date ?? this.date,
      idTipoDiario: idTipoDiario ?? this.idTipoDiario,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (caminho.present) {
      map['CAMINHO'] = Variable<String>(caminho.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (date.present) {
      map['DATE'] = Variable<int>(date.value);
    }
    if (idTipoDiario.present) {
      map['ID_TIPO_DIARIO'] = Variable<int>(idTipoDiario.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FotoTableCompanion(')
          ..write('id: $id, ')
          ..write('caminho: $caminho, ')
          ..write('descricao: $descricao, ')
          ..write('date: $date, ')
          ..write('idTipoDiario: $idTipoDiario, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RegistroFezesTableTable extends RegistroFezesTable
    with TableInfo<$RegistroFezesTableTable, RegistroFezesTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RegistroFezesTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idDiarioMeta =
      const VerificationMeta('idDiario');
  @override
  late final GeneratedColumn<String> idDiario = GeneratedColumn<String>(
      'ID_DIARIO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _duracaoMeta =
      const VerificationMeta('duracao');
  @override
  late final GeneratedColumn<int> duracao = GeneratedColumn<int>(
      'DURACAO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _quantidadeMeta =
      const VerificationMeta('quantidade');
  @override
  late final GeneratedColumn<int> quantidade = GeneratedColumn<int>(
      'QUANTIDADE', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nivelHumorMeta =
      const VerificationMeta('nivelHumor');
  @override
  late final GeneratedColumn<int> nivelHumor = GeneratedColumn<int>(
      'NIVEL_HUMOR', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nivelBristrolMeta =
      const VerificationMeta('nivelBristrol');
  @override
  late final GeneratedColumn<int> nivelBristrol = GeneratedColumn<int>(
      'NIVEL_BRISTROL', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _corMeta = const VerificationMeta('cor');
  @override
  late final GeneratedColumn<int> cor = GeneratedColumn<int>(
      'COR', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _observacoesMeta =
      const VerificationMeta('observacoes');
  @override
  late final GeneratedColumn<String> observacoes = GeneratedColumn<String>(
      'OBSERVACOES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _caracteristicasMeta =
      const VerificationMeta('caracteristicas');
  @override
  late final GeneratedColumn<String> caracteristicas = GeneratedColumn<String>(
      'CARACTERISTICAS', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        idDiario,
        duracao,
        quantidade,
        nivelHumor,
        nivelBristrol,
        cor,
        observacoes,
        caracteristicas
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'registro_fezes_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RegistroFezesTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID_DIARIO')) {
      context.handle(_idDiarioMeta,
          idDiario.isAcceptableOrUnknown(data['ID_DIARIO']!, _idDiarioMeta));
    } else if (isInserting) {
      context.missing(_idDiarioMeta);
    }
    if (data.containsKey('DURACAO')) {
      context.handle(_duracaoMeta,
          duracao.isAcceptableOrUnknown(data['DURACAO']!, _duracaoMeta));
    }
    if (data.containsKey('QUANTIDADE')) {
      context.handle(
          _quantidadeMeta,
          quantidade.isAcceptableOrUnknown(
              data['QUANTIDADE']!, _quantidadeMeta));
    }
    if (data.containsKey('NIVEL_HUMOR')) {
      context.handle(
          _nivelHumorMeta,
          nivelHumor.isAcceptableOrUnknown(
              data['NIVEL_HUMOR']!, _nivelHumorMeta));
    }
    if (data.containsKey('NIVEL_BRISTROL')) {
      context.handle(
          _nivelBristrolMeta,
          nivelBristrol.isAcceptableOrUnknown(
              data['NIVEL_BRISTROL']!, _nivelBristrolMeta));
    }
    if (data.containsKey('COR')) {
      context.handle(
          _corMeta, cor.isAcceptableOrUnknown(data['COR']!, _corMeta));
    }
    if (data.containsKey('OBSERVACOES')) {
      context.handle(
          _observacoesMeta,
          observacoes.isAcceptableOrUnknown(
              data['OBSERVACOES']!, _observacoesMeta));
    }
    if (data.containsKey('CARACTERISTICAS')) {
      context.handle(
          _caracteristicasMeta,
          caracteristicas.isAcceptableOrUnknown(
              data['CARACTERISTICAS']!, _caracteristicasMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idDiario};
  @override
  RegistroFezesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RegistroFezesTableData(
      idDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_DIARIO'])!,
      duracao: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DURACAO']),
      quantidade: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}QUANTIDADE']),
      nivelHumor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}NIVEL_HUMOR']),
      nivelBristrol: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}NIVEL_BRISTROL']),
      cor: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}COR']),
      observacoes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACOES']),
      caracteristicas: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CARACTERISTICAS']),
    );
  }

  @override
  $RegistroFezesTableTable createAlias(String alias) {
    return $RegistroFezesTableTable(attachedDatabase, alias);
  }
}

class RegistroFezesTableData extends DataClass
    implements Insertable<RegistroFezesTableData> {
  final String idDiario;
  final int? duracao;
  final int? quantidade;
  final int? nivelHumor;
  final int? nivelBristrol;
  final int? cor;
  final String? observacoes;
  final String? caracteristicas;
  const RegistroFezesTableData(
      {required this.idDiario,
      this.duracao,
      this.quantidade,
      this.nivelHumor,
      this.nivelBristrol,
      this.cor,
      this.observacoes,
      this.caracteristicas});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID_DIARIO'] = Variable<String>(idDiario);
    if (!nullToAbsent || duracao != null) {
      map['DURACAO'] = Variable<int>(duracao);
    }
    if (!nullToAbsent || quantidade != null) {
      map['QUANTIDADE'] = Variable<int>(quantidade);
    }
    if (!nullToAbsent || nivelHumor != null) {
      map['NIVEL_HUMOR'] = Variable<int>(nivelHumor);
    }
    if (!nullToAbsent || nivelBristrol != null) {
      map['NIVEL_BRISTROL'] = Variable<int>(nivelBristrol);
    }
    if (!nullToAbsent || cor != null) {
      map['COR'] = Variable<int>(cor);
    }
    if (!nullToAbsent || observacoes != null) {
      map['OBSERVACOES'] = Variable<String>(observacoes);
    }
    if (!nullToAbsent || caracteristicas != null) {
      map['CARACTERISTICAS'] = Variable<String>(caracteristicas);
    }
    return map;
  }

  RegistroFezesTableCompanion toCompanion(bool nullToAbsent) {
    return RegistroFezesTableCompanion(
      idDiario: Value(idDiario),
      duracao: duracao == null && nullToAbsent
          ? const Value.absent()
          : Value(duracao),
      quantidade: quantidade == null && nullToAbsent
          ? const Value.absent()
          : Value(quantidade),
      nivelHumor: nivelHumor == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelHumor),
      nivelBristrol: nivelBristrol == null && nullToAbsent
          ? const Value.absent()
          : Value(nivelBristrol),
      cor: cor == null && nullToAbsent ? const Value.absent() : Value(cor),
      observacoes: observacoes == null && nullToAbsent
          ? const Value.absent()
          : Value(observacoes),
      caracteristicas: caracteristicas == null && nullToAbsent
          ? const Value.absent()
          : Value(caracteristicas),
    );
  }

  factory RegistroFezesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RegistroFezesTableData(
      idDiario: serializer.fromJson<String>(json['idDiario']),
      duracao: serializer.fromJson<int?>(json['duracao']),
      quantidade: serializer.fromJson<int?>(json['quantidade']),
      nivelHumor: serializer.fromJson<int?>(json['nivelHumor']),
      nivelBristrol: serializer.fromJson<int?>(json['nivelBristrol']),
      cor: serializer.fromJson<int?>(json['cor']),
      observacoes: serializer.fromJson<String?>(json['observacoes']),
      caracteristicas: serializer.fromJson<String?>(json['caracteristicas']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idDiario': serializer.toJson<String>(idDiario),
      'duracao': serializer.toJson<int?>(duracao),
      'quantidade': serializer.toJson<int?>(quantidade),
      'nivelHumor': serializer.toJson<int?>(nivelHumor),
      'nivelBristrol': serializer.toJson<int?>(nivelBristrol),
      'cor': serializer.toJson<int?>(cor),
      'observacoes': serializer.toJson<String?>(observacoes),
      'caracteristicas': serializer.toJson<String?>(caracteristicas),
    };
  }

  RegistroFezesTableData copyWith(
          {String? idDiario,
          Value<int?> duracao = const Value.absent(),
          Value<int?> quantidade = const Value.absent(),
          Value<int?> nivelHumor = const Value.absent(),
          Value<int?> nivelBristrol = const Value.absent(),
          Value<int?> cor = const Value.absent(),
          Value<String?> observacoes = const Value.absent(),
          Value<String?> caracteristicas = const Value.absent()}) =>
      RegistroFezesTableData(
        idDiario: idDiario ?? this.idDiario,
        duracao: duracao.present ? duracao.value : this.duracao,
        quantidade: quantidade.present ? quantidade.value : this.quantidade,
        nivelHumor: nivelHumor.present ? nivelHumor.value : this.nivelHumor,
        nivelBristrol:
            nivelBristrol.present ? nivelBristrol.value : this.nivelBristrol,
        cor: cor.present ? cor.value : this.cor,
        observacoes: observacoes.present ? observacoes.value : this.observacoes,
        caracteristicas: caracteristicas.present
            ? caracteristicas.value
            : this.caracteristicas,
      );
  RegistroFezesTableData copyWithCompanion(RegistroFezesTableCompanion data) {
    return RegistroFezesTableData(
      idDiario: data.idDiario.present ? data.idDiario.value : this.idDiario,
      duracao: data.duracao.present ? data.duracao.value : this.duracao,
      quantidade:
          data.quantidade.present ? data.quantidade.value : this.quantidade,
      nivelHumor:
          data.nivelHumor.present ? data.nivelHumor.value : this.nivelHumor,
      nivelBristrol: data.nivelBristrol.present
          ? data.nivelBristrol.value
          : this.nivelBristrol,
      cor: data.cor.present ? data.cor.value : this.cor,
      observacoes:
          data.observacoes.present ? data.observacoes.value : this.observacoes,
      caracteristicas: data.caracteristicas.present
          ? data.caracteristicas.value
          : this.caracteristicas,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RegistroFezesTableData(')
          ..write('idDiario: $idDiario, ')
          ..write('duracao: $duracao, ')
          ..write('quantidade: $quantidade, ')
          ..write('nivelHumor: $nivelHumor, ')
          ..write('nivelBristrol: $nivelBristrol, ')
          ..write('cor: $cor, ')
          ..write('observacoes: $observacoes, ')
          ..write('caracteristicas: $caracteristicas')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(idDiario, duracao, quantidade, nivelHumor,
      nivelBristrol, cor, observacoes, caracteristicas);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RegistroFezesTableData &&
          other.idDiario == this.idDiario &&
          other.duracao == this.duracao &&
          other.quantidade == this.quantidade &&
          other.nivelHumor == this.nivelHumor &&
          other.nivelBristrol == this.nivelBristrol &&
          other.cor == this.cor &&
          other.observacoes == this.observacoes &&
          other.caracteristicas == this.caracteristicas);
}

class RegistroFezesTableCompanion
    extends UpdateCompanion<RegistroFezesTableData> {
  final Value<String> idDiario;
  final Value<int?> duracao;
  final Value<int?> quantidade;
  final Value<int?> nivelHumor;
  final Value<int?> nivelBristrol;
  final Value<int?> cor;
  final Value<String?> observacoes;
  final Value<String?> caracteristicas;
  final Value<int> rowid;
  const RegistroFezesTableCompanion({
    this.idDiario = const Value.absent(),
    this.duracao = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.nivelHumor = const Value.absent(),
    this.nivelBristrol = const Value.absent(),
    this.cor = const Value.absent(),
    this.observacoes = const Value.absent(),
    this.caracteristicas = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RegistroFezesTableCompanion.insert({
    required String idDiario,
    this.duracao = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.nivelHumor = const Value.absent(),
    this.nivelBristrol = const Value.absent(),
    this.cor = const Value.absent(),
    this.observacoes = const Value.absent(),
    this.caracteristicas = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : idDiario = Value(idDiario);
  static Insertable<RegistroFezesTableData> custom({
    Expression<String>? idDiario,
    Expression<int>? duracao,
    Expression<int>? quantidade,
    Expression<int>? nivelHumor,
    Expression<int>? nivelBristrol,
    Expression<int>? cor,
    Expression<String>? observacoes,
    Expression<String>? caracteristicas,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idDiario != null) 'ID_DIARIO': idDiario,
      if (duracao != null) 'DURACAO': duracao,
      if (quantidade != null) 'QUANTIDADE': quantidade,
      if (nivelHumor != null) 'NIVEL_HUMOR': nivelHumor,
      if (nivelBristrol != null) 'NIVEL_BRISTROL': nivelBristrol,
      if (cor != null) 'COR': cor,
      if (observacoes != null) 'OBSERVACOES': observacoes,
      if (caracteristicas != null) 'CARACTERISTICAS': caracteristicas,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RegistroFezesTableCompanion copyWith(
      {Value<String>? idDiario,
      Value<int?>? duracao,
      Value<int?>? quantidade,
      Value<int?>? nivelHumor,
      Value<int?>? nivelBristrol,
      Value<int?>? cor,
      Value<String?>? observacoes,
      Value<String?>? caracteristicas,
      Value<int>? rowid}) {
    return RegistroFezesTableCompanion(
      idDiario: idDiario ?? this.idDiario,
      duracao: duracao ?? this.duracao,
      quantidade: quantidade ?? this.quantidade,
      nivelHumor: nivelHumor ?? this.nivelHumor,
      nivelBristrol: nivelBristrol ?? this.nivelBristrol,
      cor: cor ?? this.cor,
      observacoes: observacoes ?? this.observacoes,
      caracteristicas: caracteristicas ?? this.caracteristicas,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idDiario.present) {
      map['ID_DIARIO'] = Variable<String>(idDiario.value);
    }
    if (duracao.present) {
      map['DURACAO'] = Variable<int>(duracao.value);
    }
    if (quantidade.present) {
      map['QUANTIDADE'] = Variable<int>(quantidade.value);
    }
    if (nivelHumor.present) {
      map['NIVEL_HUMOR'] = Variable<int>(nivelHumor.value);
    }
    if (nivelBristrol.present) {
      map['NIVEL_BRISTROL'] = Variable<int>(nivelBristrol.value);
    }
    if (cor.present) {
      map['COR'] = Variable<int>(cor.value);
    }
    if (observacoes.present) {
      map['OBSERVACOES'] = Variable<String>(observacoes.value);
    }
    if (caracteristicas.present) {
      map['CARACTERISTICAS'] = Variable<String>(caracteristicas.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RegistroFezesTableCompanion(')
          ..write('idDiario: $idDiario, ')
          ..write('duracao: $duracao, ')
          ..write('quantidade: $quantidade, ')
          ..write('nivelHumor: $nivelHumor, ')
          ..write('nivelBristrol: $nivelBristrol, ')
          ..write('cor: $cor, ')
          ..write('observacoes: $observacoes, ')
          ..write('caracteristicas: $caracteristicas, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $RotinaPeleTableTable extends RotinaPeleTable
    with TableInfo<$RotinaPeleTableTable, RotinaPeleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $RotinaPeleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idDiarioMeta =
      const VerificationMeta('idDiario');
  @override
  late final GeneratedColumn<String> idDiario = GeneratedColumn<String>(
      'ID_DIARIO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateInicioMeta =
      const VerificationMeta('dateInicio');
  @override
  late final GeneratedColumn<int> dateInicio = GeneratedColumn<int>(
      'DATE_INICIO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dateFimMeta =
      const VerificationMeta('dateFim');
  @override
  late final GeneratedColumn<int> dateFim = GeneratedColumn<int>(
      'DATE_FIM', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'NOME', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'descricao', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [idDiario, dateInicio, dateFim, nome, descricao];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'rotina_pele_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<RotinaPeleTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID_DIARIO')) {
      context.handle(_idDiarioMeta,
          idDiario.isAcceptableOrUnknown(data['ID_DIARIO']!, _idDiarioMeta));
    } else if (isInserting) {
      context.missing(_idDiarioMeta);
    }
    if (data.containsKey('DATE_INICIO')) {
      context.handle(
          _dateInicioMeta,
          dateInicio.isAcceptableOrUnknown(
              data['DATE_INICIO']!, _dateInicioMeta));
    }
    if (data.containsKey('DATE_FIM')) {
      context.handle(_dateFimMeta,
          dateFim.isAcceptableOrUnknown(data['DATE_FIM']!, _dateFimMeta));
    }
    if (data.containsKey('NOME')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['NOME']!, _nomeMeta));
    }
    if (data.containsKey('descricao')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['descricao']!, _descricaoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idDiario};
  @override
  RotinaPeleTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RotinaPeleTableData(
      idDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_DIARIO'])!,
      dateInicio: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATE_INICIO']),
      dateFim: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATE_FIM']),
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}descricao']),
    );
  }

  @override
  $RotinaPeleTableTable createAlias(String alias) {
    return $RotinaPeleTableTable(attachedDatabase, alias);
  }
}

class RotinaPeleTableData extends DataClass
    implements Insertable<RotinaPeleTableData> {
  final String idDiario;
  final int? dateInicio;
  final int? dateFim;
  final String? nome;
  final String? descricao;
  const RotinaPeleTableData(
      {required this.idDiario,
      this.dateInicio,
      this.dateFim,
      this.nome,
      this.descricao});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID_DIARIO'] = Variable<String>(idDiario);
    if (!nullToAbsent || dateInicio != null) {
      map['DATE_INICIO'] = Variable<int>(dateInicio);
    }
    if (!nullToAbsent || dateFim != null) {
      map['DATE_FIM'] = Variable<int>(dateFim);
    }
    if (!nullToAbsent || nome != null) {
      map['NOME'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['descricao'] = Variable<String>(descricao);
    }
    return map;
  }

  RotinaPeleTableCompanion toCompanion(bool nullToAbsent) {
    return RotinaPeleTableCompanion(
      idDiario: Value(idDiario),
      dateInicio: dateInicio == null && nullToAbsent
          ? const Value.absent()
          : Value(dateInicio),
      dateFim: dateFim == null && nullToAbsent
          ? const Value.absent()
          : Value(dateFim),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
    );
  }

  factory RotinaPeleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RotinaPeleTableData(
      idDiario: serializer.fromJson<String>(json['idDiario']),
      dateInicio: serializer.fromJson<int?>(json['dateInicio']),
      dateFim: serializer.fromJson<int?>(json['dateFim']),
      nome: serializer.fromJson<String?>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idDiario': serializer.toJson<String>(idDiario),
      'dateInicio': serializer.toJson<int?>(dateInicio),
      'dateFim': serializer.toJson<int?>(dateFim),
      'nome': serializer.toJson<String?>(nome),
      'descricao': serializer.toJson<String?>(descricao),
    };
  }

  RotinaPeleTableData copyWith(
          {String? idDiario,
          Value<int?> dateInicio = const Value.absent(),
          Value<int?> dateFim = const Value.absent(),
          Value<String?> nome = const Value.absent(),
          Value<String?> descricao = const Value.absent()}) =>
      RotinaPeleTableData(
        idDiario: idDiario ?? this.idDiario,
        dateInicio: dateInicio.present ? dateInicio.value : this.dateInicio,
        dateFim: dateFim.present ? dateFim.value : this.dateFim,
        nome: nome.present ? nome.value : this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
      );
  RotinaPeleTableData copyWithCompanion(RotinaPeleTableCompanion data) {
    return RotinaPeleTableData(
      idDiario: data.idDiario.present ? data.idDiario.value : this.idDiario,
      dateInicio:
          data.dateInicio.present ? data.dateInicio.value : this.dateInicio,
      dateFim: data.dateFim.present ? data.dateFim.value : this.dateFim,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
    );
  }

  @override
  String toString() {
    return (StringBuffer('RotinaPeleTableData(')
          ..write('idDiario: $idDiario, ')
          ..write('dateInicio: $dateInicio, ')
          ..write('dateFim: $dateFim, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(idDiario, dateInicio, dateFim, nome, descricao);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RotinaPeleTableData &&
          other.idDiario == this.idDiario &&
          other.dateInicio == this.dateInicio &&
          other.dateFim == this.dateFim &&
          other.nome == this.nome &&
          other.descricao == this.descricao);
}

class RotinaPeleTableCompanion extends UpdateCompanion<RotinaPeleTableData> {
  final Value<String> idDiario;
  final Value<int?> dateInicio;
  final Value<int?> dateFim;
  final Value<String?> nome;
  final Value<String?> descricao;
  final Value<int> rowid;
  const RotinaPeleTableCompanion({
    this.idDiario = const Value.absent(),
    this.dateInicio = const Value.absent(),
    this.dateFim = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RotinaPeleTableCompanion.insert({
    required String idDiario,
    this.dateInicio = const Value.absent(),
    this.dateFim = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : idDiario = Value(idDiario);
  static Insertable<RotinaPeleTableData> custom({
    Expression<String>? idDiario,
    Expression<int>? dateInicio,
    Expression<int>? dateFim,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idDiario != null) 'ID_DIARIO': idDiario,
      if (dateInicio != null) 'DATE_INICIO': dateInicio,
      if (dateFim != null) 'DATE_FIM': dateFim,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'descricao': descricao,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RotinaPeleTableCompanion copyWith(
      {Value<String>? idDiario,
      Value<int?>? dateInicio,
      Value<int?>? dateFim,
      Value<String?>? nome,
      Value<String?>? descricao,
      Value<int>? rowid}) {
    return RotinaPeleTableCompanion(
      idDiario: idDiario ?? this.idDiario,
      dateInicio: dateInicio ?? this.dateInicio,
      dateFim: dateFim ?? this.dateFim,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idDiario.present) {
      map['ID_DIARIO'] = Variable<String>(idDiario.value);
    }
    if (dateInicio.present) {
      map['DATE_INICIO'] = Variable<int>(dateInicio.value);
    }
    if (dateFim.present) {
      map['DATE_FIM'] = Variable<int>(dateFim.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['descricao'] = Variable<String>(descricao.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RotinaPeleTableCompanion(')
          ..write('idDiario: $idDiario, ')
          ..write('dateInicio: $dateInicio, ')
          ..write('dateFim: $dateFim, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ProdutoRotinaPeleTableTable extends ProdutoRotinaPeleTable
    with TableInfo<$ProdutoRotinaPeleTableTable, ProdutoRotinaPeleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ProdutoRotinaPeleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idDiarioMeta =
      const VerificationMeta('idDiario');
  @override
  late final GeneratedColumn<String> idDiario = GeneratedColumn<String>(
      'ID_DIARIO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _dateInseridoMeta =
      const VerificationMeta('dateInserido');
  @override
  late final GeneratedColumn<int> dateInserido = GeneratedColumn<int>(
      'DATE_INSERIDO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'NOME', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'DESCRICAO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ordemMeta = const VerificationMeta('ordem');
  @override
  late final GeneratedColumn<int> ordem = GeneratedColumn<int>(
      'ORDEM', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, idDiario, dateInserido, nome, descricao, ordem];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'produto_rotina_pele_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<ProdutoRotinaPeleTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ID_DIARIO')) {
      context.handle(_idDiarioMeta,
          idDiario.isAcceptableOrUnknown(data['ID_DIARIO']!, _idDiarioMeta));
    } else if (isInserting) {
      context.missing(_idDiarioMeta);
    }
    if (data.containsKey('DATE_INSERIDO')) {
      context.handle(
          _dateInseridoMeta,
          dateInserido.isAcceptableOrUnknown(
              data['DATE_INSERIDO']!, _dateInseridoMeta));
    }
    if (data.containsKey('NOME')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['NOME']!, _nomeMeta));
    }
    if (data.containsKey('DESCRICAO')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['DESCRICAO']!, _descricaoMeta));
    }
    if (data.containsKey('ORDEM')) {
      context.handle(
          _ordemMeta, ordem.isAcceptableOrUnknown(data['ORDEM']!, _ordemMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ProdutoRotinaPeleTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ProdutoRotinaPeleTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      idDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_DIARIO'])!,
      dateInserido: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATE_INSERIDO']),
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
      ordem: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ORDEM']),
    );
  }

  @override
  $ProdutoRotinaPeleTableTable createAlias(String alias) {
    return $ProdutoRotinaPeleTableTable(attachedDatabase, alias);
  }
}

class ProdutoRotinaPeleTableData extends DataClass
    implements Insertable<ProdutoRotinaPeleTableData> {
  final String id;
  final String idDiario;
  final int? dateInserido;
  final String? nome;
  final String? descricao;
  final int? ordem;
  const ProdutoRotinaPeleTableData(
      {required this.id,
      required this.idDiario,
      this.dateInserido,
      this.nome,
      this.descricao,
      this.ordem});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    map['ID_DIARIO'] = Variable<String>(idDiario);
    if (!nullToAbsent || dateInserido != null) {
      map['DATE_INSERIDO'] = Variable<int>(dateInserido);
    }
    if (!nullToAbsent || nome != null) {
      map['NOME'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || ordem != null) {
      map['ORDEM'] = Variable<int>(ordem);
    }
    return map;
  }

  ProdutoRotinaPeleTableCompanion toCompanion(bool nullToAbsent) {
    return ProdutoRotinaPeleTableCompanion(
      id: Value(id),
      idDiario: Value(idDiario),
      dateInserido: dateInserido == null && nullToAbsent
          ? const Value.absent()
          : Value(dateInserido),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      ordem:
          ordem == null && nullToAbsent ? const Value.absent() : Value(ordem),
    );
  }

  factory ProdutoRotinaPeleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ProdutoRotinaPeleTableData(
      id: serializer.fromJson<String>(json['id']),
      idDiario: serializer.fromJson<String>(json['idDiario']),
      dateInserido: serializer.fromJson<int?>(json['dateInserido']),
      nome: serializer.fromJson<String?>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      ordem: serializer.fromJson<int?>(json['ordem']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idDiario': serializer.toJson<String>(idDiario),
      'dateInserido': serializer.toJson<int?>(dateInserido),
      'nome': serializer.toJson<String?>(nome),
      'descricao': serializer.toJson<String?>(descricao),
      'ordem': serializer.toJson<int?>(ordem),
    };
  }

  ProdutoRotinaPeleTableData copyWith(
          {String? id,
          String? idDiario,
          Value<int?> dateInserido = const Value.absent(),
          Value<String?> nome = const Value.absent(),
          Value<String?> descricao = const Value.absent(),
          Value<int?> ordem = const Value.absent()}) =>
      ProdutoRotinaPeleTableData(
        id: id ?? this.id,
        idDiario: idDiario ?? this.idDiario,
        dateInserido:
            dateInserido.present ? dateInserido.value : this.dateInserido,
        nome: nome.present ? nome.value : this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
        ordem: ordem.present ? ordem.value : this.ordem,
      );
  ProdutoRotinaPeleTableData copyWithCompanion(
      ProdutoRotinaPeleTableCompanion data) {
    return ProdutoRotinaPeleTableData(
      id: data.id.present ? data.id.value : this.id,
      idDiario: data.idDiario.present ? data.idDiario.value : this.idDiario,
      dateInserido: data.dateInserido.present
          ? data.dateInserido.value
          : this.dateInserido,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      ordem: data.ordem.present ? data.ordem.value : this.ordem,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoRotinaPeleTableData(')
          ..write('id: $id, ')
          ..write('idDiario: $idDiario, ')
          ..write('dateInserido: $dateInserido, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, idDiario, dateInserido, nome, descricao, ordem);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ProdutoRotinaPeleTableData &&
          other.id == this.id &&
          other.idDiario == this.idDiario &&
          other.dateInserido == this.dateInserido &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.ordem == this.ordem);
}

class ProdutoRotinaPeleTableCompanion
    extends UpdateCompanion<ProdutoRotinaPeleTableData> {
  final Value<String> id;
  final Value<String> idDiario;
  final Value<int?> dateInserido;
  final Value<String?> nome;
  final Value<String?> descricao;
  final Value<int?> ordem;
  final Value<int> rowid;
  const ProdutoRotinaPeleTableCompanion({
    this.id = const Value.absent(),
    this.idDiario = const Value.absent(),
    this.dateInserido = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.ordem = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ProdutoRotinaPeleTableCompanion.insert({
    required String id,
    required String idDiario,
    this.dateInserido = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.ordem = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        idDiario = Value(idDiario);
  static Insertable<ProdutoRotinaPeleTableData> custom({
    Expression<String>? id,
    Expression<String>? idDiario,
    Expression<int>? dateInserido,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<int>? ordem,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (idDiario != null) 'ID_DIARIO': idDiario,
      if (dateInserido != null) 'DATE_INSERIDO': dateInserido,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'DESCRICAO': descricao,
      if (ordem != null) 'ORDEM': ordem,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ProdutoRotinaPeleTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? idDiario,
      Value<int?>? dateInserido,
      Value<String?>? nome,
      Value<String?>? descricao,
      Value<int?>? ordem,
      Value<int>? rowid}) {
    return ProdutoRotinaPeleTableCompanion(
      id: id ?? this.id,
      idDiario: idDiario ?? this.idDiario,
      dateInserido: dateInserido ?? this.dateInserido,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      ordem: ordem ?? this.ordem,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (idDiario.present) {
      map['ID_DIARIO'] = Variable<String>(idDiario.value);
    }
    if (dateInserido.present) {
      map['DATE_INSERIDO'] = Variable<int>(dateInserido.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (ordem.present) {
      map['ORDEM'] = Variable<int>(ordem.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ProdutoRotinaPeleTableCompanion(')
          ..write('id: $id, ')
          ..write('idDiario: $idDiario, ')
          ..write('dateInserido: $dateInserido, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $AtividadeRotinaPeleTableTable extends AtividadeRotinaPeleTable
    with
        TableInfo<$AtividadeRotinaPeleTableTable,
            AtividadeRotinaPeleTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AtividadeRotinaPeleTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idAtividadeMeta =
      const VerificationMeta('idAtividade');
  @override
  late final GeneratedColumn<String> idAtividade = GeneratedColumn<String>(
      'ID_ATIVIDADE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idDetalheMeta =
      const VerificationMeta('idDetalhe');
  @override
  late final GeneratedColumn<String> idDetalhe = GeneratedColumn<String>(
      'ID_DETALHE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _nomeMeta = const VerificationMeta('nome');
  @override
  late final GeneratedColumn<String> nome = GeneratedColumn<String>(
      'NOME', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descricaoMeta =
      const VerificationMeta('descricao');
  @override
  late final GeneratedColumn<String> descricao = GeneratedColumn<String>(
      'DESCRICAO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _ordemMeta = const VerificationMeta('ordem');
  @override
  late final GeneratedColumn<int> ordem = GeneratedColumn<int>(
      'ORDEM', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [idAtividade, idDetalhe, nome, descricao, ordem];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'atividade_rotina_pele_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AtividadeRotinaPeleTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID_ATIVIDADE')) {
      context.handle(
          _idAtividadeMeta,
          idAtividade.isAcceptableOrUnknown(
              data['ID_ATIVIDADE']!, _idAtividadeMeta));
    } else if (isInserting) {
      context.missing(_idAtividadeMeta);
    }
    if (data.containsKey('ID_DETALHE')) {
      context.handle(_idDetalheMeta,
          idDetalhe.isAcceptableOrUnknown(data['ID_DETALHE']!, _idDetalheMeta));
    } else if (isInserting) {
      context.missing(_idDetalheMeta);
    }
    if (data.containsKey('NOME')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['NOME']!, _nomeMeta));
    } else if (isInserting) {
      context.missing(_nomeMeta);
    }
    if (data.containsKey('DESCRICAO')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['DESCRICAO']!, _descricaoMeta));
    }
    if (data.containsKey('ORDEM')) {
      context.handle(
          _ordemMeta, ordem.isAcceptableOrUnknown(data['ORDEM']!, _ordemMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {idAtividade};
  @override
  AtividadeRotinaPeleTableData map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AtividadeRotinaPeleTableData(
      idAtividade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_ATIVIDADE'])!,
      idDetalhe: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_DETALHE'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME'])!,
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
      ordem: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ORDEM']),
    );
  }

  @override
  $AtividadeRotinaPeleTableTable createAlias(String alias) {
    return $AtividadeRotinaPeleTableTable(attachedDatabase, alias);
  }
}

class AtividadeRotinaPeleTableData extends DataClass
    implements Insertable<AtividadeRotinaPeleTableData> {
  final String idAtividade;
  final String idDetalhe;
  final String nome;
  final String? descricao;
  final int? ordem;
  const AtividadeRotinaPeleTableData(
      {required this.idAtividade,
      required this.idDetalhe,
      required this.nome,
      this.descricao,
      this.ordem});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID_ATIVIDADE'] = Variable<String>(idAtividade);
    map['ID_DETALHE'] = Variable<String>(idDetalhe);
    map['NOME'] = Variable<String>(nome);
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || ordem != null) {
      map['ORDEM'] = Variable<int>(ordem);
    }
    return map;
  }

  AtividadeRotinaPeleTableCompanion toCompanion(bool nullToAbsent) {
    return AtividadeRotinaPeleTableCompanion(
      idAtividade: Value(idAtividade),
      idDetalhe: Value(idDetalhe),
      nome: Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
      ordem:
          ordem == null && nullToAbsent ? const Value.absent() : Value(ordem),
    );
  }

  factory AtividadeRotinaPeleTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AtividadeRotinaPeleTableData(
      idAtividade: serializer.fromJson<String>(json['idAtividade']),
      idDetalhe: serializer.fromJson<String>(json['idDetalhe']),
      nome: serializer.fromJson<String>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      ordem: serializer.fromJson<int?>(json['ordem']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'idAtividade': serializer.toJson<String>(idAtividade),
      'idDetalhe': serializer.toJson<String>(idDetalhe),
      'nome': serializer.toJson<String>(nome),
      'descricao': serializer.toJson<String?>(descricao),
      'ordem': serializer.toJson<int?>(ordem),
    };
  }

  AtividadeRotinaPeleTableData copyWith(
          {String? idAtividade,
          String? idDetalhe,
          String? nome,
          Value<String?> descricao = const Value.absent(),
          Value<int?> ordem = const Value.absent()}) =>
      AtividadeRotinaPeleTableData(
        idAtividade: idAtividade ?? this.idAtividade,
        idDetalhe: idDetalhe ?? this.idDetalhe,
        nome: nome ?? this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
        ordem: ordem.present ? ordem.value : this.ordem,
      );
  AtividadeRotinaPeleTableData copyWithCompanion(
      AtividadeRotinaPeleTableCompanion data) {
    return AtividadeRotinaPeleTableData(
      idAtividade:
          data.idAtividade.present ? data.idAtividade.value : this.idAtividade,
      idDetalhe: data.idDetalhe.present ? data.idDetalhe.value : this.idDetalhe,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      ordem: data.ordem.present ? data.ordem.value : this.ordem,
    );
  }

  @override
  String toString() {
    return (StringBuffer('AtividadeRotinaPeleTableData(')
          ..write('idAtividade: $idAtividade, ')
          ..write('idDetalhe: $idDetalhe, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(idAtividade, idDetalhe, nome, descricao, ordem);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AtividadeRotinaPeleTableData &&
          other.idAtividade == this.idAtividade &&
          other.idDetalhe == this.idDetalhe &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.ordem == this.ordem);
}

class AtividadeRotinaPeleTableCompanion
    extends UpdateCompanion<AtividadeRotinaPeleTableData> {
  final Value<String> idAtividade;
  final Value<String> idDetalhe;
  final Value<String> nome;
  final Value<String?> descricao;
  final Value<int?> ordem;
  final Value<int> rowid;
  const AtividadeRotinaPeleTableCompanion({
    this.idAtividade = const Value.absent(),
    this.idDetalhe = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.ordem = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  AtividadeRotinaPeleTableCompanion.insert({
    required String idAtividade,
    required String idDetalhe,
    required String nome,
    this.descricao = const Value.absent(),
    this.ordem = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : idAtividade = Value(idAtividade),
        idDetalhe = Value(idDetalhe),
        nome = Value(nome);
  static Insertable<AtividadeRotinaPeleTableData> custom({
    Expression<String>? idAtividade,
    Expression<String>? idDetalhe,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<int>? ordem,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (idAtividade != null) 'ID_ATIVIDADE': idAtividade,
      if (idDetalhe != null) 'ID_DETALHE': idDetalhe,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'DESCRICAO': descricao,
      if (ordem != null) 'ORDEM': ordem,
      if (rowid != null) 'rowid': rowid,
    });
  }

  AtividadeRotinaPeleTableCompanion copyWith(
      {Value<String>? idAtividade,
      Value<String>? idDetalhe,
      Value<String>? nome,
      Value<String?>? descricao,
      Value<int?>? ordem,
      Value<int>? rowid}) {
    return AtividadeRotinaPeleTableCompanion(
      idAtividade: idAtividade ?? this.idAtividade,
      idDetalhe: idDetalhe ?? this.idDetalhe,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      ordem: ordem ?? this.ordem,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (idAtividade.present) {
      map['ID_ATIVIDADE'] = Variable<String>(idAtividade.value);
    }
    if (idDetalhe.present) {
      map['ID_DETALHE'] = Variable<String>(idDetalhe.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (ordem.present) {
      map['ORDEM'] = Variable<int>(ordem.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AtividadeRotinaPeleTableCompanion(')
          ..write('idAtividade: $idAtividade, ')
          ..write('idDetalhe: $idDetalhe, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('ordem: $ordem, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $NotificationTableTable extends NotificationTable
    with TableInfo<$NotificationTableTable, NotificationTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $NotificationTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idAtividadeMeta =
      const VerificationMeta('idAtividade');
  @override
  late final GeneratedColumn<String> idAtividade = GeneratedColumn<String>(
      'ID_ATIVIDADE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _scheduledTimeMeta =
      const VerificationMeta('scheduledTime');
  @override
  late final GeneratedColumn<int> scheduledTime = GeneratedColumn<int>(
      'SCHEDULED_TIME', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'TITLE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'BODY', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isRecurringMeta =
      const VerificationMeta('isRecurring');
  @override
  late final GeneratedColumn<bool> isRecurring = GeneratedColumn<bool>(
      'IS_RECURRING', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints: GeneratedColumn.constraintIsAlways(
          'CHECK ("IS_RECURRING" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _recurrencePatternMeta =
      const VerificationMeta('recurrencePattern');
  @override
  late final GeneratedColumn<String> recurrencePattern =
      GeneratedColumn<String>('RECURRENCE_PATTERN', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _specificDaysMeta =
      const VerificationMeta('specificDays');
  @override
  late final GeneratedColumn<String> specificDays = GeneratedColumn<String>(
      'SPECIFIC_DAYS', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idAtividade,
        scheduledTime,
        title,
        body,
        isRecurring,
        recurrencePattern,
        specificDays
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'notification_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<NotificationTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ID_ATIVIDADE')) {
      context.handle(
          _idAtividadeMeta,
          idAtividade.isAcceptableOrUnknown(
              data['ID_ATIVIDADE']!, _idAtividadeMeta));
    }
    if (data.containsKey('SCHEDULED_TIME')) {
      context.handle(
          _scheduledTimeMeta,
          scheduledTime.isAcceptableOrUnknown(
              data['SCHEDULED_TIME']!, _scheduledTimeMeta));
    } else if (isInserting) {
      context.missing(_scheduledTimeMeta);
    }
    if (data.containsKey('TITLE')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['TITLE']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('BODY')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['BODY']!, _bodyMeta));
    }
    if (data.containsKey('IS_RECURRING')) {
      context.handle(
          _isRecurringMeta,
          isRecurring.isAcceptableOrUnknown(
              data['IS_RECURRING']!, _isRecurringMeta));
    }
    if (data.containsKey('RECURRENCE_PATTERN')) {
      context.handle(
          _recurrencePatternMeta,
          recurrencePattern.isAcceptableOrUnknown(
              data['RECURRENCE_PATTERN']!, _recurrencePatternMeta));
    }
    if (data.containsKey('SPECIFIC_DAYS')) {
      context.handle(
          _specificDaysMeta,
          specificDays.isAcceptableOrUnknown(
              data['SPECIFIC_DAYS']!, _specificDaysMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  NotificationTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return NotificationTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      idAtividade: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_ATIVIDADE']),
      scheduledTime: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}SCHEDULED_TIME'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}TITLE'])!,
      body: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}BODY']),
      isRecurring: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}IS_RECURRING'])!,
      recurrencePattern: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}RECURRENCE_PATTERN']),
      specificDays: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}SPECIFIC_DAYS']),
    );
  }

  @override
  $NotificationTableTable createAlias(String alias) {
    return $NotificationTableTable(attachedDatabase, alias);
  }
}

class NotificationTableData extends DataClass
    implements Insertable<NotificationTableData> {
  final String id;
  final String? idAtividade;
  final int scheduledTime;
  final String title;
  final String? body;
  final bool isRecurring;
  final String? recurrencePattern;
  final String? specificDays;
  const NotificationTableData(
      {required this.id,
      this.idAtividade,
      required this.scheduledTime,
      required this.title,
      this.body,
      required this.isRecurring,
      this.recurrencePattern,
      this.specificDays});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || idAtividade != null) {
      map['ID_ATIVIDADE'] = Variable<String>(idAtividade);
    }
    map['SCHEDULED_TIME'] = Variable<int>(scheduledTime);
    map['TITLE'] = Variable<String>(title);
    if (!nullToAbsent || body != null) {
      map['BODY'] = Variable<String>(body);
    }
    map['IS_RECURRING'] = Variable<bool>(isRecurring);
    if (!nullToAbsent || recurrencePattern != null) {
      map['RECURRENCE_PATTERN'] = Variable<String>(recurrencePattern);
    }
    if (!nullToAbsent || specificDays != null) {
      map['SPECIFIC_DAYS'] = Variable<String>(specificDays);
    }
    return map;
  }

  NotificationTableCompanion toCompanion(bool nullToAbsent) {
    return NotificationTableCompanion(
      id: Value(id),
      idAtividade: idAtividade == null && nullToAbsent
          ? const Value.absent()
          : Value(idAtividade),
      scheduledTime: Value(scheduledTime),
      title: Value(title),
      body: body == null && nullToAbsent ? const Value.absent() : Value(body),
      isRecurring: Value(isRecurring),
      recurrencePattern: recurrencePattern == null && nullToAbsent
          ? const Value.absent()
          : Value(recurrencePattern),
      specificDays: specificDays == null && nullToAbsent
          ? const Value.absent()
          : Value(specificDays),
    );
  }

  factory NotificationTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return NotificationTableData(
      id: serializer.fromJson<String>(json['id']),
      idAtividade: serializer.fromJson<String?>(json['idAtividade']),
      scheduledTime: serializer.fromJson<int>(json['scheduledTime']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String?>(json['body']),
      isRecurring: serializer.fromJson<bool>(json['isRecurring']),
      recurrencePattern:
          serializer.fromJson<String?>(json['recurrencePattern']),
      specificDays: serializer.fromJson<String?>(json['specificDays']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idAtividade': serializer.toJson<String?>(idAtividade),
      'scheduledTime': serializer.toJson<int>(scheduledTime),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String?>(body),
      'isRecurring': serializer.toJson<bool>(isRecurring),
      'recurrencePattern': serializer.toJson<String?>(recurrencePattern),
      'specificDays': serializer.toJson<String?>(specificDays),
    };
  }

  NotificationTableData copyWith(
          {String? id,
          Value<String?> idAtividade = const Value.absent(),
          int? scheduledTime,
          String? title,
          Value<String?> body = const Value.absent(),
          bool? isRecurring,
          Value<String?> recurrencePattern = const Value.absent(),
          Value<String?> specificDays = const Value.absent()}) =>
      NotificationTableData(
        id: id ?? this.id,
        idAtividade: idAtividade.present ? idAtividade.value : this.idAtividade,
        scheduledTime: scheduledTime ?? this.scheduledTime,
        title: title ?? this.title,
        body: body.present ? body.value : this.body,
        isRecurring: isRecurring ?? this.isRecurring,
        recurrencePattern: recurrencePattern.present
            ? recurrencePattern.value
            : this.recurrencePattern,
        specificDays:
            specificDays.present ? specificDays.value : this.specificDays,
      );
  NotificationTableData copyWithCompanion(NotificationTableCompanion data) {
    return NotificationTableData(
      id: data.id.present ? data.id.value : this.id,
      idAtividade:
          data.idAtividade.present ? data.idAtividade.value : this.idAtividade,
      scheduledTime: data.scheduledTime.present
          ? data.scheduledTime.value
          : this.scheduledTime,
      title: data.title.present ? data.title.value : this.title,
      body: data.body.present ? data.body.value : this.body,
      isRecurring:
          data.isRecurring.present ? data.isRecurring.value : this.isRecurring,
      recurrencePattern: data.recurrencePattern.present
          ? data.recurrencePattern.value
          : this.recurrencePattern,
      specificDays: data.specificDays.present
          ? data.specificDays.value
          : this.specificDays,
    );
  }

  @override
  String toString() {
    return (StringBuffer('NotificationTableData(')
          ..write('id: $id, ')
          ..write('idAtividade: $idAtividade, ')
          ..write('scheduledTime: $scheduledTime, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('recurrencePattern: $recurrencePattern, ')
          ..write('specificDays: $specificDays')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idAtividade, scheduledTime, title, body,
      isRecurring, recurrencePattern, specificDays);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is NotificationTableData &&
          other.id == this.id &&
          other.idAtividade == this.idAtividade &&
          other.scheduledTime == this.scheduledTime &&
          other.title == this.title &&
          other.body == this.body &&
          other.isRecurring == this.isRecurring &&
          other.recurrencePattern == this.recurrencePattern &&
          other.specificDays == this.specificDays);
}

class NotificationTableCompanion
    extends UpdateCompanion<NotificationTableData> {
  final Value<String> id;
  final Value<String?> idAtividade;
  final Value<int> scheduledTime;
  final Value<String> title;
  final Value<String?> body;
  final Value<bool> isRecurring;
  final Value<String?> recurrencePattern;
  final Value<String?> specificDays;
  final Value<int> rowid;
  const NotificationTableCompanion({
    this.id = const Value.absent(),
    this.idAtividade = const Value.absent(),
    this.scheduledTime = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
    this.isRecurring = const Value.absent(),
    this.recurrencePattern = const Value.absent(),
    this.specificDays = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  NotificationTableCompanion.insert({
    required String id,
    this.idAtividade = const Value.absent(),
    required int scheduledTime,
    required String title,
    this.body = const Value.absent(),
    this.isRecurring = const Value.absent(),
    this.recurrencePattern = const Value.absent(),
    this.specificDays = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        scheduledTime = Value(scheduledTime),
        title = Value(title);
  static Insertable<NotificationTableData> custom({
    Expression<String>? id,
    Expression<String>? idAtividade,
    Expression<int>? scheduledTime,
    Expression<String>? title,
    Expression<String>? body,
    Expression<bool>? isRecurring,
    Expression<String>? recurrencePattern,
    Expression<String>? specificDays,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (idAtividade != null) 'ID_ATIVIDADE': idAtividade,
      if (scheduledTime != null) 'SCHEDULED_TIME': scheduledTime,
      if (title != null) 'TITLE': title,
      if (body != null) 'BODY': body,
      if (isRecurring != null) 'IS_RECURRING': isRecurring,
      if (recurrencePattern != null) 'RECURRENCE_PATTERN': recurrencePattern,
      if (specificDays != null) 'SPECIFIC_DAYS': specificDays,
      if (rowid != null) 'rowid': rowid,
    });
  }

  NotificationTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? idAtividade,
      Value<int>? scheduledTime,
      Value<String>? title,
      Value<String?>? body,
      Value<bool>? isRecurring,
      Value<String?>? recurrencePattern,
      Value<String?>? specificDays,
      Value<int>? rowid}) {
    return NotificationTableCompanion(
      id: id ?? this.id,
      idAtividade: idAtividade ?? this.idAtividade,
      scheduledTime: scheduledTime ?? this.scheduledTime,
      title: title ?? this.title,
      body: body ?? this.body,
      isRecurring: isRecurring ?? this.isRecurring,
      recurrencePattern: recurrencePattern ?? this.recurrencePattern,
      specificDays: specificDays ?? this.specificDays,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (idAtividade.present) {
      map['ID_ATIVIDADE'] = Variable<String>(idAtividade.value);
    }
    if (scheduledTime.present) {
      map['SCHEDULED_TIME'] = Variable<int>(scheduledTime.value);
    }
    if (title.present) {
      map['TITLE'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['BODY'] = Variable<String>(body.value);
    }
    if (isRecurring.present) {
      map['IS_RECURRING'] = Variable<bool>(isRecurring.value);
    }
    if (recurrencePattern.present) {
      map['RECURRENCE_PATTERN'] = Variable<String>(recurrencePattern.value);
    }
    if (specificDays.present) {
      map['SPECIFIC_DAYS'] = Variable<String>(specificDays.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('NotificationTableCompanion(')
          ..write('id: $id, ')
          ..write('idAtividade: $idAtividade, ')
          ..write('scheduledTime: $scheduledTime, ')
          ..write('title: $title, ')
          ..write('body: $body, ')
          ..write('isRecurring: $isRecurring, ')
          ..write('recurrencePattern: $recurrencePattern, ')
          ..write('specificDays: $specificDays, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDb extends GeneratedDatabase {
  _$AppDb(QueryExecutor e) : super(e);
  $AppDbManager get managers => $AppDbManager(this);
  late final $DiarioTableTable diarioTable = $DiarioTableTable(this);
  late final $CaracteristicaTableTable caracteristicaTable =
      $CaracteristicaTableTable(this);
  late final $FotoTableTable fotoTable = $FotoTableTable(this);
  late final $RegistroFezesTableTable registroFezesTable =
      $RegistroFezesTableTable(this);
  late final $RotinaPeleTableTable rotinaPeleTable =
      $RotinaPeleTableTable(this);
  late final $ProdutoRotinaPeleTableTable produtoRotinaPeleTable =
      $ProdutoRotinaPeleTableTable(this);
  late final $AtividadeRotinaPeleTableTable atividadeRotinaPeleTable =
      $AtividadeRotinaPeleTableTable(this);
  late final $NotificationTableTable notificationTable =
      $NotificationTableTable(this);
  late final CaracteristicaDao caracteristicaDao =
      CaracteristicaDao(this as AppDb);
  late final DiarioDao diarioDao = DiarioDao(this as AppDb);
  late final FotoDao fotoDao = FotoDao(this as AppDb);
  late final RegistroFezesDao registroFezesDao =
      RegistroFezesDao(this as AppDb);
  late final RotinaPeleDao rotinaPeleDao = RotinaPeleDao(this as AppDb);
  late final ProdutoRotinaPeleDao produtoRotinaPeleDao =
      ProdutoRotinaPeleDao(this as AppDb);
  late final AtividadeRotinaPeleDao atividadeRotinaPeleDao =
      AtividadeRotinaPeleDao(this as AppDb);
  late final NotificationDao notificationDao = NotificationDao(this as AppDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        diarioTable,
        caracteristicaTable,
        fotoTable,
        registroFezesTable,
        rotinaPeleTable,
        produtoRotinaPeleTable,
        atividadeRotinaPeleTable,
        notificationTable
      ];
}

typedef $$DiarioTableTableCreateCompanionBuilder = DiarioTableCompanion
    Function({
  required String id,
  Value<String?> idUsuario,
  Value<int?> data,
  Value<int> rowid,
});
typedef $$DiarioTableTableUpdateCompanionBuilder = DiarioTableCompanion
    Function({
  Value<String> id,
  Value<String?> idUsuario,
  Value<int?> data,
  Value<int> rowid,
});

class $$DiarioTableTableFilterComposer
    extends FilterComposer<_$AppDb, $DiarioTableTable> {
  $$DiarioTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idUsuario => $state.composableBuilder(
      column: $state.table.idUsuario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get data => $state.composableBuilder(
      column: $state.table.data,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$DiarioTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $DiarioTableTable> {
  $$DiarioTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idUsuario => $state.composableBuilder(
      column: $state.table.idUsuario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get data => $state.composableBuilder(
      column: $state.table.data,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$DiarioTableTableTableManager extends RootTableManager<
    _$AppDb,
    $DiarioTableTable,
    DiarioTableData,
    $$DiarioTableTableFilterComposer,
    $$DiarioTableTableOrderingComposer,
    $$DiarioTableTableCreateCompanionBuilder,
    $$DiarioTableTableUpdateCompanionBuilder,
    (
      DiarioTableData,
      BaseReferences<_$AppDb, $DiarioTableTable, DiarioTableData>
    ),
    DiarioTableData,
    PrefetchHooks Function()> {
  $$DiarioTableTableTableManager(_$AppDb db, $DiarioTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$DiarioTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$DiarioTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> idUsuario = const Value.absent(),
            Value<int?> data = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DiarioTableCompanion(
            id: id,
            idUsuario: idUsuario,
            data: data,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> idUsuario = const Value.absent(),
            Value<int?> data = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              DiarioTableCompanion.insert(
            id: id,
            idUsuario: idUsuario,
            data: data,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$DiarioTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $DiarioTableTable,
    DiarioTableData,
    $$DiarioTableTableFilterComposer,
    $$DiarioTableTableOrderingComposer,
    $$DiarioTableTableCreateCompanionBuilder,
    $$DiarioTableTableUpdateCompanionBuilder,
    (
      DiarioTableData,
      BaseReferences<_$AppDb, $DiarioTableTable, DiarioTableData>
    ),
    DiarioTableData,
    PrefetchHooks Function()>;
typedef $$CaracteristicaTableTableCreateCompanionBuilder
    = CaracteristicaTableCompanion Function({
  required String id,
  Value<String?> nome,
  Value<String?> descricao,
  Value<String?> idTipoDiario,
  Value<String?> idDiario,
  Value<int> rowid,
});
typedef $$CaracteristicaTableTableUpdateCompanionBuilder
    = CaracteristicaTableCompanion Function({
  Value<String> id,
  Value<String?> nome,
  Value<String?> descricao,
  Value<String?> idTipoDiario,
  Value<String?> idDiario,
  Value<int> rowid,
});

class $$CaracteristicaTableTableFilterComposer
    extends FilterComposer<_$AppDb, $CaracteristicaTableTable> {
  $$CaracteristicaTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CaracteristicaTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $CaracteristicaTableTable> {
  $$CaracteristicaTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$CaracteristicaTableTableTableManager extends RootTableManager<
    _$AppDb,
    $CaracteristicaTableTable,
    CaracteristicaTableData,
    $$CaracteristicaTableTableFilterComposer,
    $$CaracteristicaTableTableOrderingComposer,
    $$CaracteristicaTableTableCreateCompanionBuilder,
    $$CaracteristicaTableTableUpdateCompanionBuilder,
    (
      CaracteristicaTableData,
      BaseReferences<_$AppDb, $CaracteristicaTableTable,
          CaracteristicaTableData>
    ),
    CaracteristicaTableData,
    PrefetchHooks Function()> {
  $$CaracteristicaTableTableTableManager(
      _$AppDb db, $CaracteristicaTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$CaracteristicaTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$CaracteristicaTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<String?> idTipoDiario = const Value.absent(),
            Value<String?> idDiario = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CaracteristicaTableCompanion(
            id: id,
            nome: nome,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
            idDiario: idDiario,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<String?> idTipoDiario = const Value.absent(),
            Value<String?> idDiario = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CaracteristicaTableCompanion.insert(
            id: id,
            nome: nome,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
            idDiario: idDiario,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CaracteristicaTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $CaracteristicaTableTable,
    CaracteristicaTableData,
    $$CaracteristicaTableTableFilterComposer,
    $$CaracteristicaTableTableOrderingComposer,
    $$CaracteristicaTableTableCreateCompanionBuilder,
    $$CaracteristicaTableTableUpdateCompanionBuilder,
    (
      CaracteristicaTableData,
      BaseReferences<_$AppDb, $CaracteristicaTableTable,
          CaracteristicaTableData>
    ),
    CaracteristicaTableData,
    PrefetchHooks Function()>;
typedef $$FotoTableTableCreateCompanionBuilder = FotoTableCompanion Function({
  required String id,
  Value<String?> caminho,
  Value<String?> descricao,
  Value<int?> date,
  Value<int?> idTipoDiario,
  Value<int> rowid,
});
typedef $$FotoTableTableUpdateCompanionBuilder = FotoTableCompanion Function({
  Value<String> id,
  Value<String?> caminho,
  Value<String?> descricao,
  Value<int?> date,
  Value<int?> idTipoDiario,
  Value<int> rowid,
});

class $$FotoTableTableFilterComposer
    extends FilterComposer<_$AppDb, $FotoTableTable> {
  $$FotoTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get caminho => $state.composableBuilder(
      column: $state.table.caminho,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FotoTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $FotoTableTable> {
  $$FotoTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get caminho => $state.composableBuilder(
      column: $state.table.caminho,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get date => $state.composableBuilder(
      column: $state.table.date,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$FotoTableTableTableManager extends RootTableManager<
    _$AppDb,
    $FotoTableTable,
    FotoTableData,
    $$FotoTableTableFilterComposer,
    $$FotoTableTableOrderingComposer,
    $$FotoTableTableCreateCompanionBuilder,
    $$FotoTableTableUpdateCompanionBuilder,
    (FotoTableData, BaseReferences<_$AppDb, $FotoTableTable, FotoTableData>),
    FotoTableData,
    PrefetchHooks Function()> {
  $$FotoTableTableTableManager(_$AppDb db, $FotoTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$FotoTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$FotoTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> caminho = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> date = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FotoTableCompanion(
            id: id,
            caminho: caminho,
            descricao: descricao,
            date: date,
            idTipoDiario: idTipoDiario,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> caminho = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> date = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              FotoTableCompanion.insert(
            id: id,
            caminho: caminho,
            descricao: descricao,
            date: date,
            idTipoDiario: idTipoDiario,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FotoTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $FotoTableTable,
    FotoTableData,
    $$FotoTableTableFilterComposer,
    $$FotoTableTableOrderingComposer,
    $$FotoTableTableCreateCompanionBuilder,
    $$FotoTableTableUpdateCompanionBuilder,
    (FotoTableData, BaseReferences<_$AppDb, $FotoTableTable, FotoTableData>),
    FotoTableData,
    PrefetchHooks Function()>;
typedef $$RegistroFezesTableTableCreateCompanionBuilder
    = RegistroFezesTableCompanion Function({
  required String idDiario,
  Value<int?> duracao,
  Value<int?> quantidade,
  Value<int?> nivelHumor,
  Value<int?> nivelBristrol,
  Value<int?> cor,
  Value<String?> observacoes,
  Value<String?> caracteristicas,
  Value<int> rowid,
});
typedef $$RegistroFezesTableTableUpdateCompanionBuilder
    = RegistroFezesTableCompanion Function({
  Value<String> idDiario,
  Value<int?> duracao,
  Value<int?> quantidade,
  Value<int?> nivelHumor,
  Value<int?> nivelBristrol,
  Value<int?> cor,
  Value<String?> observacoes,
  Value<String?> caracteristicas,
  Value<int> rowid,
});

class $$RegistroFezesTableTableFilterComposer
    extends FilterComposer<_$AppDb, $RegistroFezesTableTable> {
  $$RegistroFezesTableTableFilterComposer(super.$state);
  ColumnFilters<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get duracao => $state.composableBuilder(
      column: $state.table.duracao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get quantidade => $state.composableBuilder(
      column: $state.table.quantidade,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get nivelHumor => $state.composableBuilder(
      column: $state.table.nivelHumor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get nivelBristrol => $state.composableBuilder(
      column: $state.table.nivelBristrol,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get cor => $state.composableBuilder(
      column: $state.table.cor,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get observacoes => $state.composableBuilder(
      column: $state.table.observacoes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get caracteristicas => $state.composableBuilder(
      column: $state.table.caracteristicas,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RegistroFezesTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $RegistroFezesTableTable> {
  $$RegistroFezesTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get duracao => $state.composableBuilder(
      column: $state.table.duracao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get quantidade => $state.composableBuilder(
      column: $state.table.quantidade,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get nivelHumor => $state.composableBuilder(
      column: $state.table.nivelHumor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get nivelBristrol => $state.composableBuilder(
      column: $state.table.nivelBristrol,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get cor => $state.composableBuilder(
      column: $state.table.cor,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get observacoes => $state.composableBuilder(
      column: $state.table.observacoes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get caracteristicas => $state.composableBuilder(
      column: $state.table.caracteristicas,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$RegistroFezesTableTableTableManager extends RootTableManager<
    _$AppDb,
    $RegistroFezesTableTable,
    RegistroFezesTableData,
    $$RegistroFezesTableTableFilterComposer,
    $$RegistroFezesTableTableOrderingComposer,
    $$RegistroFezesTableTableCreateCompanionBuilder,
    $$RegistroFezesTableTableUpdateCompanionBuilder,
    (
      RegistroFezesTableData,
      BaseReferences<_$AppDb, $RegistroFezesTableTable, RegistroFezesTableData>
    ),
    RegistroFezesTableData,
    PrefetchHooks Function()> {
  $$RegistroFezesTableTableTableManager(
      _$AppDb db, $RegistroFezesTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RegistroFezesTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$RegistroFezesTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> idDiario = const Value.absent(),
            Value<int?> duracao = const Value.absent(),
            Value<int?> quantidade = const Value.absent(),
            Value<int?> nivelHumor = const Value.absent(),
            Value<int?> nivelBristrol = const Value.absent(),
            Value<int?> cor = const Value.absent(),
            Value<String?> observacoes = const Value.absent(),
            Value<String?> caracteristicas = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistroFezesTableCompanion(
            idDiario: idDiario,
            duracao: duracao,
            quantidade: quantidade,
            nivelHumor: nivelHumor,
            nivelBristrol: nivelBristrol,
            cor: cor,
            observacoes: observacoes,
            caracteristicas: caracteristicas,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String idDiario,
            Value<int?> duracao = const Value.absent(),
            Value<int?> quantidade = const Value.absent(),
            Value<int?> nivelHumor = const Value.absent(),
            Value<int?> nivelBristrol = const Value.absent(),
            Value<int?> cor = const Value.absent(),
            Value<String?> observacoes = const Value.absent(),
            Value<String?> caracteristicas = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistroFezesTableCompanion.insert(
            idDiario: idDiario,
            duracao: duracao,
            quantidade: quantidade,
            nivelHumor: nivelHumor,
            nivelBristrol: nivelBristrol,
            cor: cor,
            observacoes: observacoes,
            caracteristicas: caracteristicas,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RegistroFezesTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $RegistroFezesTableTable,
    RegistroFezesTableData,
    $$RegistroFezesTableTableFilterComposer,
    $$RegistroFezesTableTableOrderingComposer,
    $$RegistroFezesTableTableCreateCompanionBuilder,
    $$RegistroFezesTableTableUpdateCompanionBuilder,
    (
      RegistroFezesTableData,
      BaseReferences<_$AppDb, $RegistroFezesTableTable, RegistroFezesTableData>
    ),
    RegistroFezesTableData,
    PrefetchHooks Function()>;
typedef $$RotinaPeleTableTableCreateCompanionBuilder = RotinaPeleTableCompanion
    Function({
  required String idDiario,
  Value<int?> dateInicio,
  Value<int?> dateFim,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int> rowid,
});
typedef $$RotinaPeleTableTableUpdateCompanionBuilder = RotinaPeleTableCompanion
    Function({
  Value<String> idDiario,
  Value<int?> dateInicio,
  Value<int?> dateFim,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int> rowid,
});

class $$RotinaPeleTableTableFilterComposer
    extends FilterComposer<_$AppDb, $RotinaPeleTableTable> {
  $$RotinaPeleTableTableFilterComposer(super.$state);
  ColumnFilters<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dateInicio => $state.composableBuilder(
      column: $state.table.dateInicio,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dateFim => $state.composableBuilder(
      column: $state.table.dateFim,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$RotinaPeleTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $RotinaPeleTableTable> {
  $$RotinaPeleTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dateInicio => $state.composableBuilder(
      column: $state.table.dateInicio,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dateFim => $state.composableBuilder(
      column: $state.table.dateFim,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$RotinaPeleTableTableTableManager extends RootTableManager<
    _$AppDb,
    $RotinaPeleTableTable,
    RotinaPeleTableData,
    $$RotinaPeleTableTableFilterComposer,
    $$RotinaPeleTableTableOrderingComposer,
    $$RotinaPeleTableTableCreateCompanionBuilder,
    $$RotinaPeleTableTableUpdateCompanionBuilder,
    (
      RotinaPeleTableData,
      BaseReferences<_$AppDb, $RotinaPeleTableTable, RotinaPeleTableData>
    ),
    RotinaPeleTableData,
    PrefetchHooks Function()> {
  $$RotinaPeleTableTableTableManager(_$AppDb db, $RotinaPeleTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$RotinaPeleTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$RotinaPeleTableTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> idDiario = const Value.absent(),
            Value<int?> dateInicio = const Value.absent(),
            Value<int?> dateFim = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RotinaPeleTableCompanion(
            idDiario: idDiario,
            dateInicio: dateInicio,
            dateFim: dateFim,
            nome: nome,
            descricao: descricao,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String idDiario,
            Value<int?> dateInicio = const Value.absent(),
            Value<int?> dateFim = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RotinaPeleTableCompanion.insert(
            idDiario: idDiario,
            dateInicio: dateInicio,
            dateFim: dateFim,
            nome: nome,
            descricao: descricao,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$RotinaPeleTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $RotinaPeleTableTable,
    RotinaPeleTableData,
    $$RotinaPeleTableTableFilterComposer,
    $$RotinaPeleTableTableOrderingComposer,
    $$RotinaPeleTableTableCreateCompanionBuilder,
    $$RotinaPeleTableTableUpdateCompanionBuilder,
    (
      RotinaPeleTableData,
      BaseReferences<_$AppDb, $RotinaPeleTableTable, RotinaPeleTableData>
    ),
    RotinaPeleTableData,
    PrefetchHooks Function()>;
typedef $$ProdutoRotinaPeleTableTableCreateCompanionBuilder
    = ProdutoRotinaPeleTableCompanion Function({
  required String id,
  required String idDiario,
  Value<int?> dateInserido,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int?> ordem,
  Value<int> rowid,
});
typedef $$ProdutoRotinaPeleTableTableUpdateCompanionBuilder
    = ProdutoRotinaPeleTableCompanion Function({
  Value<String> id,
  Value<String> idDiario,
  Value<int?> dateInserido,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int?> ordem,
  Value<int> rowid,
});

class $$ProdutoRotinaPeleTableTableFilterComposer
    extends FilterComposer<_$AppDb, $ProdutoRotinaPeleTableTable> {
  $$ProdutoRotinaPeleTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get dateInserido => $state.composableBuilder(
      column: $state.table.dateInserido,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get ordem => $state.composableBuilder(
      column: $state.table.ordem,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$ProdutoRotinaPeleTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $ProdutoRotinaPeleTableTable> {
  $$ProdutoRotinaPeleTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idDiario => $state.composableBuilder(
      column: $state.table.idDiario,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get dateInserido => $state.composableBuilder(
      column: $state.table.dateInserido,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ordem => $state.composableBuilder(
      column: $state.table.ordem,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$ProdutoRotinaPeleTableTableTableManager extends RootTableManager<
    _$AppDb,
    $ProdutoRotinaPeleTableTable,
    ProdutoRotinaPeleTableData,
    $$ProdutoRotinaPeleTableTableFilterComposer,
    $$ProdutoRotinaPeleTableTableOrderingComposer,
    $$ProdutoRotinaPeleTableTableCreateCompanionBuilder,
    $$ProdutoRotinaPeleTableTableUpdateCompanionBuilder,
    (
      ProdutoRotinaPeleTableData,
      BaseReferences<_$AppDb, $ProdutoRotinaPeleTableTable,
          ProdutoRotinaPeleTableData>
    ),
    ProdutoRotinaPeleTableData,
    PrefetchHooks Function()> {
  $$ProdutoRotinaPeleTableTableTableManager(
      _$AppDb db, $ProdutoRotinaPeleTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$ProdutoRotinaPeleTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$ProdutoRotinaPeleTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> idDiario = const Value.absent(),
            Value<int?> dateInserido = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> ordem = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProdutoRotinaPeleTableCompanion(
            id: id,
            idDiario: idDiario,
            dateInserido: dateInserido,
            nome: nome,
            descricao: descricao,
            ordem: ordem,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String idDiario,
            Value<int?> dateInserido = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> ordem = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ProdutoRotinaPeleTableCompanion.insert(
            id: id,
            idDiario: idDiario,
            dateInserido: dateInserido,
            nome: nome,
            descricao: descricao,
            ordem: ordem,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ProdutoRotinaPeleTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDb,
        $ProdutoRotinaPeleTableTable,
        ProdutoRotinaPeleTableData,
        $$ProdutoRotinaPeleTableTableFilterComposer,
        $$ProdutoRotinaPeleTableTableOrderingComposer,
        $$ProdutoRotinaPeleTableTableCreateCompanionBuilder,
        $$ProdutoRotinaPeleTableTableUpdateCompanionBuilder,
        (
          ProdutoRotinaPeleTableData,
          BaseReferences<_$AppDb, $ProdutoRotinaPeleTableTable,
              ProdutoRotinaPeleTableData>
        ),
        ProdutoRotinaPeleTableData,
        PrefetchHooks Function()>;
typedef $$AtividadeRotinaPeleTableTableCreateCompanionBuilder
    = AtividadeRotinaPeleTableCompanion Function({
  required String idAtividade,
  required String idDetalhe,
  required String nome,
  Value<String?> descricao,
  Value<int?> ordem,
  Value<int> rowid,
});
typedef $$AtividadeRotinaPeleTableTableUpdateCompanionBuilder
    = AtividadeRotinaPeleTableCompanion Function({
  Value<String> idAtividade,
  Value<String> idDetalhe,
  Value<String> nome,
  Value<String?> descricao,
  Value<int?> ordem,
  Value<int> rowid,
});

class $$AtividadeRotinaPeleTableTableFilterComposer
    extends FilterComposer<_$AppDb, $AtividadeRotinaPeleTableTable> {
  $$AtividadeRotinaPeleTableTableFilterComposer(super.$state);
  ColumnFilters<String> get idAtividade => $state.composableBuilder(
      column: $state.table.idAtividade,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idDetalhe => $state.composableBuilder(
      column: $state.table.idDetalhe,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get ordem => $state.composableBuilder(
      column: $state.table.ordem,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$AtividadeRotinaPeleTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $AtividadeRotinaPeleTableTable> {
  $$AtividadeRotinaPeleTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get idAtividade => $state.composableBuilder(
      column: $state.table.idAtividade,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idDetalhe => $state.composableBuilder(
      column: $state.table.idDetalhe,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get nome => $state.composableBuilder(
      column: $state.table.nome,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get descricao => $state.composableBuilder(
      column: $state.table.descricao,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get ordem => $state.composableBuilder(
      column: $state.table.ordem,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$AtividadeRotinaPeleTableTableTableManager extends RootTableManager<
    _$AppDb,
    $AtividadeRotinaPeleTableTable,
    AtividadeRotinaPeleTableData,
    $$AtividadeRotinaPeleTableTableFilterComposer,
    $$AtividadeRotinaPeleTableTableOrderingComposer,
    $$AtividadeRotinaPeleTableTableCreateCompanionBuilder,
    $$AtividadeRotinaPeleTableTableUpdateCompanionBuilder,
    (
      AtividadeRotinaPeleTableData,
      BaseReferences<_$AppDb, $AtividadeRotinaPeleTableTable,
          AtividadeRotinaPeleTableData>
    ),
    AtividadeRotinaPeleTableData,
    PrefetchHooks Function()> {
  $$AtividadeRotinaPeleTableTableTableManager(
      _$AppDb db, $AtividadeRotinaPeleTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer: $$AtividadeRotinaPeleTableTableFilterComposer(
              ComposerState(db, table)),
          orderingComposer: $$AtividadeRotinaPeleTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> idAtividade = const Value.absent(),
            Value<String> idDetalhe = const Value.absent(),
            Value<String> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> ordem = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AtividadeRotinaPeleTableCompanion(
            idAtividade: idAtividade,
            idDetalhe: idDetalhe,
            nome: nome,
            descricao: descricao,
            ordem: ordem,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String idAtividade,
            required String idDetalhe,
            required String nome,
            Value<String?> descricao = const Value.absent(),
            Value<int?> ordem = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              AtividadeRotinaPeleTableCompanion.insert(
            idAtividade: idAtividade,
            idDetalhe: idDetalhe,
            nome: nome,
            descricao: descricao,
            ordem: ordem,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AtividadeRotinaPeleTableTableProcessedTableManager
    = ProcessedTableManager<
        _$AppDb,
        $AtividadeRotinaPeleTableTable,
        AtividadeRotinaPeleTableData,
        $$AtividadeRotinaPeleTableTableFilterComposer,
        $$AtividadeRotinaPeleTableTableOrderingComposer,
        $$AtividadeRotinaPeleTableTableCreateCompanionBuilder,
        $$AtividadeRotinaPeleTableTableUpdateCompanionBuilder,
        (
          AtividadeRotinaPeleTableData,
          BaseReferences<_$AppDb, $AtividadeRotinaPeleTableTable,
              AtividadeRotinaPeleTableData>
        ),
        AtividadeRotinaPeleTableData,
        PrefetchHooks Function()>;
typedef $$NotificationTableTableCreateCompanionBuilder
    = NotificationTableCompanion Function({
  required String id,
  Value<String?> idAtividade,
  required int scheduledTime,
  required String title,
  Value<String?> body,
  Value<bool> isRecurring,
  Value<String?> recurrencePattern,
  Value<String?> specificDays,
  Value<int> rowid,
});
typedef $$NotificationTableTableUpdateCompanionBuilder
    = NotificationTableCompanion Function({
  Value<String> id,
  Value<String?> idAtividade,
  Value<int> scheduledTime,
  Value<String> title,
  Value<String?> body,
  Value<bool> isRecurring,
  Value<String?> recurrencePattern,
  Value<String?> specificDays,
  Value<int> rowid,
});

class $$NotificationTableTableFilterComposer
    extends FilterComposer<_$AppDb, $NotificationTableTable> {
  $$NotificationTableTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get idAtividade => $state.composableBuilder(
      column: $state.table.idAtividade,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<int> get scheduledTime => $state.composableBuilder(
      column: $state.table.scheduledTime,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get body => $state.composableBuilder(
      column: $state.table.body,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<bool> get isRecurring => $state.composableBuilder(
      column: $state.table.isRecurring,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get recurrencePattern => $state.composableBuilder(
      column: $state.table.recurrencePattern,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get specificDays => $state.composableBuilder(
      column: $state.table.specificDays,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$NotificationTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $NotificationTableTable> {
  $$NotificationTableTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get idAtividade => $state.composableBuilder(
      column: $state.table.idAtividade,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<int> get scheduledTime => $state.composableBuilder(
      column: $state.table.scheduledTime,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get body => $state.composableBuilder(
      column: $state.table.body,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<bool> get isRecurring => $state.composableBuilder(
      column: $state.table.isRecurring,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get recurrencePattern => $state.composableBuilder(
      column: $state.table.recurrencePattern,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get specificDays => $state.composableBuilder(
      column: $state.table.specificDays,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$NotificationTableTableTableManager extends RootTableManager<
    _$AppDb,
    $NotificationTableTable,
    NotificationTableData,
    $$NotificationTableTableFilterComposer,
    $$NotificationTableTableOrderingComposer,
    $$NotificationTableTableCreateCompanionBuilder,
    $$NotificationTableTableUpdateCompanionBuilder,
    (
      NotificationTableData,
      BaseReferences<_$AppDb, $NotificationTableTable, NotificationTableData>
    ),
    NotificationTableData,
    PrefetchHooks Function()> {
  $$NotificationTableTableTableManager(
      _$AppDb db, $NotificationTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$NotificationTableTableFilterComposer(ComposerState(db, table)),
          orderingComposer: $$NotificationTableTableOrderingComposer(
              ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String?> idAtividade = const Value.absent(),
            Value<int> scheduledTime = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<String?> body = const Value.absent(),
            Value<bool> isRecurring = const Value.absent(),
            Value<String?> recurrencePattern = const Value.absent(),
            Value<String?> specificDays = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NotificationTableCompanion(
            id: id,
            idAtividade: idAtividade,
            scheduledTime: scheduledTime,
            title: title,
            body: body,
            isRecurring: isRecurring,
            recurrencePattern: recurrencePattern,
            specificDays: specificDays,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> idAtividade = const Value.absent(),
            required int scheduledTime,
            required String title,
            Value<String?> body = const Value.absent(),
            Value<bool> isRecurring = const Value.absent(),
            Value<String?> recurrencePattern = const Value.absent(),
            Value<String?> specificDays = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              NotificationTableCompanion.insert(
            id: id,
            idAtividade: idAtividade,
            scheduledTime: scheduledTime,
            title: title,
            body: body,
            isRecurring: isRecurring,
            recurrencePattern: recurrencePattern,
            specificDays: specificDays,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$NotificationTableTableProcessedTableManager = ProcessedTableManager<
    _$AppDb,
    $NotificationTableTable,
    NotificationTableData,
    $$NotificationTableTableFilterComposer,
    $$NotificationTableTableOrderingComposer,
    $$NotificationTableTableCreateCompanionBuilder,
    $$NotificationTableTableUpdateCompanionBuilder,
    (
      NotificationTableData,
      BaseReferences<_$AppDb, $NotificationTableTable, NotificationTableData>
    ),
    NotificationTableData,
    PrefetchHooks Function()>;

class $AppDbManager {
  final _$AppDb _db;
  $AppDbManager(this._db);
  $$DiarioTableTableTableManager get diarioTable =>
      $$DiarioTableTableTableManager(_db, _db.diarioTable);
  $$CaracteristicaTableTableTableManager get caracteristicaTable =>
      $$CaracteristicaTableTableTableManager(_db, _db.caracteristicaTable);
  $$FotoTableTableTableManager get fotoTable =>
      $$FotoTableTableTableManager(_db, _db.fotoTable);
  $$RegistroFezesTableTableTableManager get registroFezesTable =>
      $$RegistroFezesTableTableTableManager(_db, _db.registroFezesTable);
  $$RotinaPeleTableTableTableManager get rotinaPeleTable =>
      $$RotinaPeleTableTableTableManager(_db, _db.rotinaPeleTable);
  $$ProdutoRotinaPeleTableTableTableManager get produtoRotinaPeleTable =>
      $$ProdutoRotinaPeleTableTableTableManager(
          _db, _db.produtoRotinaPeleTable);
  $$AtividadeRotinaPeleTableTableTableManager get atividadeRotinaPeleTable =>
      $$AtividadeRotinaPeleTableTableTableManager(
          _db, _db.atividadeRotinaPeleTable);
  $$NotificationTableTableTableManager get notificationTable =>
      $$NotificationTableTableTableManager(_db, _db.notificationTable);
}
