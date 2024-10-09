import 'package:drift/drift.dart';

class DiarioTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get idUsuario => text().nullable().named('ID_USUARIO')();
  IntColumn get data => integer().nullable().named('DATA')();

  @override
  Set<Column> get primaryKey => {id};
}
