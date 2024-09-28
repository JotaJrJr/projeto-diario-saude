import 'package:drift/drift.dart';

class CaracteristicaTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get idTipoDiario => integer().nullable().named('ID_TIPO_DIARIO')();

  @override
  Set<Column> get primaryKey => {id};
}
