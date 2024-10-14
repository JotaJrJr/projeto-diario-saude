import 'package:drift/drift.dart';

class DetalheRotinaPeleTable extends Table {
  // UMA TABELA ROTINA PELE TABLE PODE TER MAIS DE UM DETALHE ORTINA PELE TABLE
  // POR QUE UMA ROTINA PODE TER VÁRIAS "SUB-ROTINAS" QUESTÃO DIURNA, NOTURNA, SEMANAL, OCASIONAL
  TextColumn get id => text().named('ID')();
  TextColumn get idRotina => text().named('ID_ROTINA')();
  TextColumn get tipoRotina => text().named('TIPO_ROTINA')();

  @override
  Set<Column> get primaryKey => {id};
}
