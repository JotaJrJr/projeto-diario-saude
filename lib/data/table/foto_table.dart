import 'package:drift/drift.dart';

class FotoTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get caminho => text().nullable().named('CAMINHO')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get date => integer().nullable().named('DATE')();
  IntColumn get idTipoDiario => integer().nullable().named('ID_TIPO_DIARIO')();

  @override
  Set<Column> get primaryKey => {id};
}
