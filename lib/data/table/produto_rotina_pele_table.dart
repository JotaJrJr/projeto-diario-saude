import 'package:drift/drift.dart';

class ProdutoRotinaPeleTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get idDetalhe => text().nullable().named('ID_DETALHE')();
  IntColumn get dateInserido => integer().nullable().named('DATE_INSERIDO')();
  TextColumn get nome => text().nullable().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get ordem => integer().nullable().named('ORDEM')();

  @override
  Set<Column> get primaryKey => {id};
}
