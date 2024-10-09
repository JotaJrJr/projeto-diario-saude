import 'package:drift/drift.dart';

class AtividadeRotinaPeleTable extends Table {
  TextColumn get idAtividade => text().named('ID_ATIVIDADE')();
  TextColumn get idDetalhe => text().named('ID_DETALHE')();
  TextColumn get nome => text().named('NOME')();
  TextColumn get descricao => text().nullable().named('DESCRICAO')();
  IntColumn get ordem => integer().nullable().named('ORDEM')();

  @override
  Set<Column> get primaryKey => {idAtividade};
}
