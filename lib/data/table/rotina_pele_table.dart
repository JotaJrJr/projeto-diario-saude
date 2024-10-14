import 'package:drift/drift.dart';

class RotinaPeleTable extends Table {
  TextColumn get id => text().named('ID')();
  IntColumn get dateInicio => integer().nullable().named('DATE_INICIO')();
  IntColumn get dateFim => integer().nullable().named('DATE_FIM')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get tipoPele => integer().nullable().named('TIPO_PELE')();

  @override
  Set<Column> get primaryKey => {id};
}
