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
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
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
  @override
  List<GeneratedColumn> get $columns => [id, nome, descricao];
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
    }
    if (data.containsKey('NOME')) {
      context.handle(
          _nomeMeta, nome.isAcceptableOrUnknown(data['NOME']!, _nomeMeta));
    }
    if (data.containsKey('DESCRICAO')) {
      context.handle(_descricaoMeta,
          descricao.isAcceptableOrUnknown(data['DESCRICAO']!, _descricaoMeta));
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
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
    );
  }

  @override
  $DiarioTableTable createAlias(String alias) {
    return $DiarioTableTable(attachedDatabase, alias);
  }
}

class DiarioTableData extends DataClass implements Insertable<DiarioTableData> {
  final int id;
  final String? nome;
  final String? descricao;
  const DiarioTableData({required this.id, this.nome, this.descricao});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<int>(id);
    if (!nullToAbsent || nome != null) {
      map['NOME'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    return map;
  }

  DiarioTableCompanion toCompanion(bool nullToAbsent) {
    return DiarioTableCompanion(
      id: Value(id),
      nome: nome == null && nullToAbsent ? const Value.absent() : Value(nome),
      descricao: descricao == null && nullToAbsent
          ? const Value.absent()
          : Value(descricao),
    );
  }

  factory DiarioTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DiarioTableData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String?>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String?>(nome),
      'descricao': serializer.toJson<String?>(descricao),
    };
  }

  DiarioTableData copyWith(
          {int? id,
          Value<String?> nome = const Value.absent(),
          Value<String?> descricao = const Value.absent()}) =>
      DiarioTableData(
        id: id ?? this.id,
        nome: nome.present ? nome.value : this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
      );
  DiarioTableData copyWithCompanion(DiarioTableCompanion data) {
    return DiarioTableData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
    );
  }

  @override
  String toString() {
    return (StringBuffer('DiarioTableData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, descricao);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DiarioTableData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao);
}

class DiarioTableCompanion extends UpdateCompanion<DiarioTableData> {
  final Value<int> id;
  final Value<String?> nome;
  final Value<String?> descricao;
  const DiarioTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
  });
  DiarioTableCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
  });
  static Insertable<DiarioTableData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? descricao,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'DESCRICAO': descricao,
    });
  }

  DiarioTableCompanion copyWith(
      {Value<int>? id, Value<String?>? nome, Value<String?>? descricao}) {
    return DiarioTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DiarioTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao')
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
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
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
  static const VerificationMeta _idTipoDiarioMeta =
      const VerificationMeta('idTipoDiario');
  @override
  late final GeneratedColumn<int> idTipoDiario = GeneratedColumn<int>(
      'ID_TIPO_DIARIO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, nome, descricao, idTipoDiario];
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
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      nome: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}NOME']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
      idTipoDiario: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID_TIPO_DIARIO']),
    );
  }

  @override
  $CaracteristicaTableTable createAlias(String alias) {
    return $CaracteristicaTableTable(attachedDatabase, alias);
  }
}

class CaracteristicaTableData extends DataClass
    implements Insertable<CaracteristicaTableData> {
  final int id;
  final String? nome;
  final String? descricao;
  final int? idTipoDiario;
  const CaracteristicaTableData(
      {required this.id, this.nome, this.descricao, this.idTipoDiario});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<int>(id);
    if (!nullToAbsent || nome != null) {
      map['NOME'] = Variable<String>(nome);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
    }
    if (!nullToAbsent || idTipoDiario != null) {
      map['ID_TIPO_DIARIO'] = Variable<int>(idTipoDiario);
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
    );
  }

  factory CaracteristicaTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return CaracteristicaTableData(
      id: serializer.fromJson<int>(json['id']),
      nome: serializer.fromJson<String?>(json['nome']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      idTipoDiario: serializer.fromJson<int?>(json['idTipoDiario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'nome': serializer.toJson<String?>(nome),
      'descricao': serializer.toJson<String?>(descricao),
      'idTipoDiario': serializer.toJson<int?>(idTipoDiario),
    };
  }

  CaracteristicaTableData copyWith(
          {int? id,
          Value<String?> nome = const Value.absent(),
          Value<String?> descricao = const Value.absent(),
          Value<int?> idTipoDiario = const Value.absent()}) =>
      CaracteristicaTableData(
        id: id ?? this.id,
        nome: nome.present ? nome.value : this.nome,
        descricao: descricao.present ? descricao.value : this.descricao,
        idTipoDiario:
            idTipoDiario.present ? idTipoDiario.value : this.idTipoDiario,
      );
  CaracteristicaTableData copyWithCompanion(CaracteristicaTableCompanion data) {
    return CaracteristicaTableData(
      id: data.id.present ? data.id.value : this.id,
      nome: data.nome.present ? data.nome.value : this.nome,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
      idTipoDiario: data.idTipoDiario.present
          ? data.idTipoDiario.value
          : this.idTipoDiario,
    );
  }

  @override
  String toString() {
    return (StringBuffer('CaracteristicaTableData(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('idTipoDiario: $idTipoDiario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, nome, descricao, idTipoDiario);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is CaracteristicaTableData &&
          other.id == this.id &&
          other.nome == this.nome &&
          other.descricao == this.descricao &&
          other.idTipoDiario == this.idTipoDiario);
}

class CaracteristicaTableCompanion
    extends UpdateCompanion<CaracteristicaTableData> {
  final Value<int> id;
  final Value<String?> nome;
  final Value<String?> descricao;
  final Value<int?> idTipoDiario;
  const CaracteristicaTableCompanion({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
  });
  CaracteristicaTableCompanion.insert({
    this.id = const Value.absent(),
    this.nome = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
  });
  static Insertable<CaracteristicaTableData> custom({
    Expression<int>? id,
    Expression<String>? nome,
    Expression<String>? descricao,
    Expression<int>? idTipoDiario,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (nome != null) 'NOME': nome,
      if (descricao != null) 'DESCRICAO': descricao,
      if (idTipoDiario != null) 'ID_TIPO_DIARIO': idTipoDiario,
    });
  }

  CaracteristicaTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? nome,
      Value<String?>? descricao,
      Value<int?>? idTipoDiario}) {
    return CaracteristicaTableCompanion(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      descricao: descricao ?? this.descricao,
      idTipoDiario: idTipoDiario ?? this.idTipoDiario,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (nome.present) {
      map['NOME'] = Variable<String>(nome.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (idTipoDiario.present) {
      map['ID_TIPO_DIARIO'] = Variable<int>(idTipoDiario.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CaracteristicaTableCompanion(')
          ..write('id: $id, ')
          ..write('nome: $nome, ')
          ..write('descricao: $descricao, ')
          ..write('idTipoDiario: $idTipoDiario')
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
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  static const VerificationMeta _idTipoDiarioMeta =
      const VerificationMeta('idTipoDiario');
  @override
  late final GeneratedColumn<int> idTipoDiario = GeneratedColumn<int>(
      'ID_TIPO_DIARIO', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, caminho, descricao, idTipoDiario];
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
    }
    if (data.containsKey('CAMINHO')) {
      context.handle(_caminhoMeta,
          caminho.isAcceptableOrUnknown(data['CAMINHO']!, _caminhoMeta));
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FotoTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FotoTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      caminho: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}CAMINHO']),
      descricao: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRICAO']),
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
  final int id;
  final String? caminho;
  final String? descricao;
  final int? idTipoDiario;
  const FotoTableData(
      {required this.id, this.caminho, this.descricao, this.idTipoDiario});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<int>(id);
    if (!nullToAbsent || caminho != null) {
      map['CAMINHO'] = Variable<String>(caminho);
    }
    if (!nullToAbsent || descricao != null) {
      map['DESCRICAO'] = Variable<String>(descricao);
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
      idTipoDiario: idTipoDiario == null && nullToAbsent
          ? const Value.absent()
          : Value(idTipoDiario),
    );
  }

  factory FotoTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FotoTableData(
      id: serializer.fromJson<int>(json['id']),
      caminho: serializer.fromJson<String?>(json['caminho']),
      descricao: serializer.fromJson<String?>(json['descricao']),
      idTipoDiario: serializer.fromJson<int?>(json['idTipoDiario']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'caminho': serializer.toJson<String?>(caminho),
      'descricao': serializer.toJson<String?>(descricao),
      'idTipoDiario': serializer.toJson<int?>(idTipoDiario),
    };
  }

  FotoTableData copyWith(
          {int? id,
          Value<String?> caminho = const Value.absent(),
          Value<String?> descricao = const Value.absent(),
          Value<int?> idTipoDiario = const Value.absent()}) =>
      FotoTableData(
        id: id ?? this.id,
        caminho: caminho.present ? caminho.value : this.caminho,
        descricao: descricao.present ? descricao.value : this.descricao,
        idTipoDiario:
            idTipoDiario.present ? idTipoDiario.value : this.idTipoDiario,
      );
  FotoTableData copyWithCompanion(FotoTableCompanion data) {
    return FotoTableData(
      id: data.id.present ? data.id.value : this.id,
      caminho: data.caminho.present ? data.caminho.value : this.caminho,
      descricao: data.descricao.present ? data.descricao.value : this.descricao,
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
          ..write('idTipoDiario: $idTipoDiario')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, caminho, descricao, idTipoDiario);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FotoTableData &&
          other.id == this.id &&
          other.caminho == this.caminho &&
          other.descricao == this.descricao &&
          other.idTipoDiario == this.idTipoDiario);
}

class FotoTableCompanion extends UpdateCompanion<FotoTableData> {
  final Value<int> id;
  final Value<String?> caminho;
  final Value<String?> descricao;
  final Value<int?> idTipoDiario;
  const FotoTableCompanion({
    this.id = const Value.absent(),
    this.caminho = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
  });
  FotoTableCompanion.insert({
    this.id = const Value.absent(),
    this.caminho = const Value.absent(),
    this.descricao = const Value.absent(),
    this.idTipoDiario = const Value.absent(),
  });
  static Insertable<FotoTableData> custom({
    Expression<int>? id,
    Expression<String>? caminho,
    Expression<String>? descricao,
    Expression<int>? idTipoDiario,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (caminho != null) 'CAMINHO': caminho,
      if (descricao != null) 'DESCRICAO': descricao,
      if (idTipoDiario != null) 'ID_TIPO_DIARIO': idTipoDiario,
    });
  }

  FotoTableCompanion copyWith(
      {Value<int>? id,
      Value<String?>? caminho,
      Value<String?>? descricao,
      Value<int?>? idTipoDiario}) {
    return FotoTableCompanion(
      id: id ?? this.id,
      caminho: caminho ?? this.caminho,
      descricao: descricao ?? this.descricao,
      idTipoDiario: idTipoDiario ?? this.idTipoDiario,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (caminho.present) {
      map['CAMINHO'] = Variable<String>(caminho.value);
    }
    if (descricao.present) {
      map['DESCRICAO'] = Variable<String>(descricao.value);
    }
    if (idTipoDiario.present) {
      map['ID_TIPO_DIARIO'] = Variable<int>(idTipoDiario.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FotoTableCompanion(')
          ..write('id: $id, ')
          ..write('caminho: $caminho, ')
          ..write('descricao: $descricao, ')
          ..write('idTipoDiario: $idTipoDiario')
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
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _idUsuarioMeta =
      const VerificationMeta('idUsuario');
  @override
  late final GeneratedColumn<String> idUsuario = GeneratedColumn<String>(
      'ID_PACIENTE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<int> data = GeneratedColumn<int>(
      'DATA', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
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
  @override
  List<GeneratedColumn> get $columns => [
        id,
        idUsuario,
        data,
        duracao,
        quantidade,
        nivelHumor,
        nivelBristrol,
        cor,
        observacoes
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
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ID_PACIENTE')) {
      context.handle(
          _idUsuarioMeta,
          idUsuario.isAcceptableOrUnknown(
              data['ID_PACIENTE']!, _idUsuarioMeta));
    }
    if (data.containsKey('DATA')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['DATA']!, _dataMeta));
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
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  RegistroFezesTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return RegistroFezesTableData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID'])!,
      idUsuario: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}ID_PACIENTE']),
      data: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}DATA']),
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
    );
  }

  @override
  $RegistroFezesTableTable createAlias(String alias) {
    return $RegistroFezesTableTable(attachedDatabase, alias);
  }
}

class RegistroFezesTableData extends DataClass
    implements Insertable<RegistroFezesTableData> {
  final String id;
  final String? idUsuario;
  final int? data;
  final int? duracao;
  final int? quantidade;
  final int? nivelHumor;
  final int? nivelBristrol;
  final int? cor;
  final String? observacoes;
  const RegistroFezesTableData(
      {required this.id,
      this.idUsuario,
      this.data,
      this.duracao,
      this.quantidade,
      this.nivelHumor,
      this.nivelBristrol,
      this.cor,
      this.observacoes});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || idUsuario != null) {
      map['ID_PACIENTE'] = Variable<String>(idUsuario);
    }
    if (!nullToAbsent || data != null) {
      map['DATA'] = Variable<int>(data);
    }
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
    return map;
  }

  RegistroFezesTableCompanion toCompanion(bool nullToAbsent) {
    return RegistroFezesTableCompanion(
      id: Value(id),
      idUsuario: idUsuario == null && nullToAbsent
          ? const Value.absent()
          : Value(idUsuario),
      data: data == null && nullToAbsent ? const Value.absent() : Value(data),
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
    );
  }

  factory RegistroFezesTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return RegistroFezesTableData(
      id: serializer.fromJson<String>(json['id']),
      idUsuario: serializer.fromJson<String?>(json['idUsuario']),
      data: serializer.fromJson<int?>(json['data']),
      duracao: serializer.fromJson<int?>(json['duracao']),
      quantidade: serializer.fromJson<int?>(json['quantidade']),
      nivelHumor: serializer.fromJson<int?>(json['nivelHumor']),
      nivelBristrol: serializer.fromJson<int?>(json['nivelBristrol']),
      cor: serializer.fromJson<int?>(json['cor']),
      observacoes: serializer.fromJson<String?>(json['observacoes']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'idUsuario': serializer.toJson<String?>(idUsuario),
      'data': serializer.toJson<int?>(data),
      'duracao': serializer.toJson<int?>(duracao),
      'quantidade': serializer.toJson<int?>(quantidade),
      'nivelHumor': serializer.toJson<int?>(nivelHumor),
      'nivelBristrol': serializer.toJson<int?>(nivelBristrol),
      'cor': serializer.toJson<int?>(cor),
      'observacoes': serializer.toJson<String?>(observacoes),
    };
  }

  RegistroFezesTableData copyWith(
          {String? id,
          Value<String?> idUsuario = const Value.absent(),
          Value<int?> data = const Value.absent(),
          Value<int?> duracao = const Value.absent(),
          Value<int?> quantidade = const Value.absent(),
          Value<int?> nivelHumor = const Value.absent(),
          Value<int?> nivelBristrol = const Value.absent(),
          Value<int?> cor = const Value.absent(),
          Value<String?> observacoes = const Value.absent()}) =>
      RegistroFezesTableData(
        id: id ?? this.id,
        idUsuario: idUsuario.present ? idUsuario.value : this.idUsuario,
        data: data.present ? data.value : this.data,
        duracao: duracao.present ? duracao.value : this.duracao,
        quantidade: quantidade.present ? quantidade.value : this.quantidade,
        nivelHumor: nivelHumor.present ? nivelHumor.value : this.nivelHumor,
        nivelBristrol:
            nivelBristrol.present ? nivelBristrol.value : this.nivelBristrol,
        cor: cor.present ? cor.value : this.cor,
        observacoes: observacoes.present ? observacoes.value : this.observacoes,
      );
  RegistroFezesTableData copyWithCompanion(RegistroFezesTableCompanion data) {
    return RegistroFezesTableData(
      id: data.id.present ? data.id.value : this.id,
      idUsuario: data.idUsuario.present ? data.idUsuario.value : this.idUsuario,
      data: data.data.present ? data.data.value : this.data,
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
    );
  }

  @override
  String toString() {
    return (StringBuffer('RegistroFezesTableData(')
          ..write('id: $id, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('data: $data, ')
          ..write('duracao: $duracao, ')
          ..write('quantidade: $quantidade, ')
          ..write('nivelHumor: $nivelHumor, ')
          ..write('nivelBristrol: $nivelBristrol, ')
          ..write('cor: $cor, ')
          ..write('observacoes: $observacoes')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, idUsuario, data, duracao, quantidade,
      nivelHumor, nivelBristrol, cor, observacoes);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is RegistroFezesTableData &&
          other.id == this.id &&
          other.idUsuario == this.idUsuario &&
          other.data == this.data &&
          other.duracao == this.duracao &&
          other.quantidade == this.quantidade &&
          other.nivelHumor == this.nivelHumor &&
          other.nivelBristrol == this.nivelBristrol &&
          other.cor == this.cor &&
          other.observacoes == this.observacoes);
}

class RegistroFezesTableCompanion
    extends UpdateCompanion<RegistroFezesTableData> {
  final Value<String> id;
  final Value<String?> idUsuario;
  final Value<int?> data;
  final Value<int?> duracao;
  final Value<int?> quantidade;
  final Value<int?> nivelHumor;
  final Value<int?> nivelBristrol;
  final Value<int?> cor;
  final Value<String?> observacoes;
  final Value<int> rowid;
  const RegistroFezesTableCompanion({
    this.id = const Value.absent(),
    this.idUsuario = const Value.absent(),
    this.data = const Value.absent(),
    this.duracao = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.nivelHumor = const Value.absent(),
    this.nivelBristrol = const Value.absent(),
    this.cor = const Value.absent(),
    this.observacoes = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  RegistroFezesTableCompanion.insert({
    required String id,
    this.idUsuario = const Value.absent(),
    this.data = const Value.absent(),
    this.duracao = const Value.absent(),
    this.quantidade = const Value.absent(),
    this.nivelHumor = const Value.absent(),
    this.nivelBristrol = const Value.absent(),
    this.cor = const Value.absent(),
    this.observacoes = const Value.absent(),
    this.rowid = const Value.absent(),
  }) : id = Value(id);
  static Insertable<RegistroFezesTableData> custom({
    Expression<String>? id,
    Expression<String>? idUsuario,
    Expression<int>? data,
    Expression<int>? duracao,
    Expression<int>? quantidade,
    Expression<int>? nivelHumor,
    Expression<int>? nivelBristrol,
    Expression<int>? cor,
    Expression<String>? observacoes,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (idUsuario != null) 'ID_PACIENTE': idUsuario,
      if (data != null) 'DATA': data,
      if (duracao != null) 'DURACAO': duracao,
      if (quantidade != null) 'QUANTIDADE': quantidade,
      if (nivelHumor != null) 'NIVEL_HUMOR': nivelHumor,
      if (nivelBristrol != null) 'NIVEL_BRISTROL': nivelBristrol,
      if (cor != null) 'COR': cor,
      if (observacoes != null) 'OBSERVACOES': observacoes,
      if (rowid != null) 'rowid': rowid,
    });
  }

  RegistroFezesTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? idUsuario,
      Value<int?>? data,
      Value<int?>? duracao,
      Value<int?>? quantidade,
      Value<int?>? nivelHumor,
      Value<int?>? nivelBristrol,
      Value<int?>? cor,
      Value<String?>? observacoes,
      Value<int>? rowid}) {
    return RegistroFezesTableCompanion(
      id: id ?? this.id,
      idUsuario: idUsuario ?? this.idUsuario,
      data: data ?? this.data,
      duracao: duracao ?? this.duracao,
      quantidade: quantidade ?? this.quantidade,
      nivelHumor: nivelHumor ?? this.nivelHumor,
      nivelBristrol: nivelBristrol ?? this.nivelBristrol,
      cor: cor ?? this.cor,
      observacoes: observacoes ?? this.observacoes,
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
      map['ID_PACIENTE'] = Variable<String>(idUsuario.value);
    }
    if (data.present) {
      map['DATA'] = Variable<int>(data.value);
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
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('RegistroFezesTableCompanion(')
          ..write('id: $id, ')
          ..write('idUsuario: $idUsuario, ')
          ..write('data: $data, ')
          ..write('duracao: $duracao, ')
          ..write('quantidade: $quantidade, ')
          ..write('nivelHumor: $nivelHumor, ')
          ..write('nivelBristrol: $nivelBristrol, ')
          ..write('cor: $cor, ')
          ..write('observacoes: $observacoes, ')
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
  late final CaracteristicaDao caracteristicaDao =
      CaracteristicaDao(this as AppDb);
  late final DiarioDao diarioDao = DiarioDao(this as AppDb);
  late final FotoDao fotoDao = FotoDao(this as AppDb);
  late final RegistroFezesDao registroFezesDao =
      RegistroFezesDao(this as AppDb);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [diarioTable, caracteristicaTable, fotoTable, registroFezesTable];
}

typedef $$DiarioTableTableCreateCompanionBuilder = DiarioTableCompanion
    Function({
  Value<int> id,
  Value<String?> nome,
  Value<String?> descricao,
});
typedef $$DiarioTableTableUpdateCompanionBuilder = DiarioTableCompanion
    Function({
  Value<int> id,
  Value<String?> nome,
  Value<String?> descricao,
});

class $$DiarioTableTableFilterComposer
    extends FilterComposer<_$AppDb, $DiarioTableTable> {
  $$DiarioTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
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
}

class $$DiarioTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $DiarioTableTable> {
  $$DiarioTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
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
            Value<int> id = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
          }) =>
              DiarioTableCompanion(
            id: id,
            nome: nome,
            descricao: descricao,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
          }) =>
              DiarioTableCompanion.insert(
            id: id,
            nome: nome,
            descricao: descricao,
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
  Value<int> id,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int?> idTipoDiario,
});
typedef $$CaracteristicaTableTableUpdateCompanionBuilder
    = CaracteristicaTableCompanion Function({
  Value<int> id,
  Value<String?> nome,
  Value<String?> descricao,
  Value<int?> idTipoDiario,
});

class $$CaracteristicaTableTableFilterComposer
    extends FilterComposer<_$AppDb, $CaracteristicaTableTable> {
  $$CaracteristicaTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
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

  ColumnFilters<int> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$CaracteristicaTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $CaracteristicaTableTable> {
  $$CaracteristicaTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
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

  ColumnOrderings<int> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
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
            Value<int> id = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
          }) =>
              CaracteristicaTableCompanion(
            id: id,
            nome: nome,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> nome = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
          }) =>
              CaracteristicaTableCompanion.insert(
            id: id,
            nome: nome,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
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
  Value<int> id,
  Value<String?> caminho,
  Value<String?> descricao,
  Value<int?> idTipoDiario,
});
typedef $$FotoTableTableUpdateCompanionBuilder = FotoTableCompanion Function({
  Value<int> id,
  Value<String?> caminho,
  Value<String?> descricao,
  Value<int?> idTipoDiario,
});

class $$FotoTableTableFilterComposer
    extends FilterComposer<_$AppDb, $FotoTableTable> {
  $$FotoTableTableFilterComposer(super.$state);
  ColumnFilters<int> get id => $state.composableBuilder(
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

  ColumnFilters<int> get idTipoDiario => $state.composableBuilder(
      column: $state.table.idTipoDiario,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));
}

class $$FotoTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $FotoTableTable> {
  $$FotoTableTableOrderingComposer(super.$state);
  ColumnOrderings<int> get id => $state.composableBuilder(
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
            Value<int> id = const Value.absent(),
            Value<String?> caminho = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
          }) =>
              FotoTableCompanion(
            id: id,
            caminho: caminho,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> caminho = const Value.absent(),
            Value<String?> descricao = const Value.absent(),
            Value<int?> idTipoDiario = const Value.absent(),
          }) =>
              FotoTableCompanion.insert(
            id: id,
            caminho: caminho,
            descricao: descricao,
            idTipoDiario: idTipoDiario,
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
  required String id,
  Value<String?> idUsuario,
  Value<int?> data,
  Value<int?> duracao,
  Value<int?> quantidade,
  Value<int?> nivelHumor,
  Value<int?> nivelBristrol,
  Value<int?> cor,
  Value<String?> observacoes,
  Value<int> rowid,
});
typedef $$RegistroFezesTableTableUpdateCompanionBuilder
    = RegistroFezesTableCompanion Function({
  Value<String> id,
  Value<String?> idUsuario,
  Value<int?> data,
  Value<int?> duracao,
  Value<int?> quantidade,
  Value<int?> nivelHumor,
  Value<int?> nivelBristrol,
  Value<int?> cor,
  Value<String?> observacoes,
  Value<int> rowid,
});

class $$RegistroFezesTableTableFilterComposer
    extends FilterComposer<_$AppDb, $RegistroFezesTableTable> {
  $$RegistroFezesTableTableFilterComposer(super.$state);
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
}

class $$RegistroFezesTableTableOrderingComposer
    extends OrderingComposer<_$AppDb, $RegistroFezesTableTable> {
  $$RegistroFezesTableTableOrderingComposer(super.$state);
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
            Value<String> id = const Value.absent(),
            Value<String?> idUsuario = const Value.absent(),
            Value<int?> data = const Value.absent(),
            Value<int?> duracao = const Value.absent(),
            Value<int?> quantidade = const Value.absent(),
            Value<int?> nivelHumor = const Value.absent(),
            Value<int?> nivelBristrol = const Value.absent(),
            Value<int?> cor = const Value.absent(),
            Value<String?> observacoes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistroFezesTableCompanion(
            id: id,
            idUsuario: idUsuario,
            data: data,
            duracao: duracao,
            quantidade: quantidade,
            nivelHumor: nivelHumor,
            nivelBristrol: nivelBristrol,
            cor: cor,
            observacoes: observacoes,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            Value<String?> idUsuario = const Value.absent(),
            Value<int?> data = const Value.absent(),
            Value<int?> duracao = const Value.absent(),
            Value<int?> quantidade = const Value.absent(),
            Value<int?> nivelHumor = const Value.absent(),
            Value<int?> nivelBristrol = const Value.absent(),
            Value<int?> cor = const Value.absent(),
            Value<String?> observacoes = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              RegistroFezesTableCompanion.insert(
            id: id,
            idUsuario: idUsuario,
            data: data,
            duracao: duracao,
            quantidade: quantidade,
            nivelHumor: nivelHumor,
            nivelBristrol: nivelBristrol,
            cor: cor,
            observacoes: observacoes,
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
}
