import 'package:drift/drift.dart';

class AtividadeRotinaPeleTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get idDetalhe => text().named('ID_DETALHE')();
  TextColumn get nome => text().named('NOME')();
  IntColumn get date => integer().named('DATE')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get tipoAtividade => integer().named('TIPO_ATIVIDADE')();
  IntColumn get ordem => integer().nullable().named('ORDEM')();

  @override
  Set<Column> get primaryKey => {id};
}
