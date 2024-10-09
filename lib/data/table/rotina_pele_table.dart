import 'package:drift/drift.dart';

class RotinaPeleTable extends Table {
  TextColumn get idDiario => text().named('ID_DIARIO')();
  IntColumn get dateInicio => integer().nullable().named('DATE_INICIO')();
  IntColumn get dateFim => integer().nullable().named('DATE_FIM')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('descricao')();

  @override
  Set<Column> get primaryKey => {idDiario};
}
