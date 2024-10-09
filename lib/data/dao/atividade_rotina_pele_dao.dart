import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/atividade_rotina_pele_table.dart';

part 'atividade_rotina_pele_dao.g.dart';

@DriftAccessor(tables: [AtividadeRotinaPeleTable])
class AtividadeRotinaPeleDao extends DatabaseAccessor<AppDb> with _$AtividadeRotinaPeleDaoMixin {
  final AppDb _db;

  AtividadeRotinaPeleDao(this._db) : super(_db);
}
