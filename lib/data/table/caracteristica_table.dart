import 'package:drift/drift.dart';

class CaracteristicaTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  TextColumn get idTipoDiario => text().nullable().named('ID_TIPO_DIARIO')();
  TextColumn get idDiario => text().nullable().named('ID_DIARIO')();

  @override
  Set<Column> get primaryKey => {id};
}
