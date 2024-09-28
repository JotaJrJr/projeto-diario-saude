import 'package:drift/drift.dart';

class DiarioTable extends Table {
  IntColumn get id => integer().named('ID')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();

  @override
  Set<Column> get primaryKey => {id};
}
