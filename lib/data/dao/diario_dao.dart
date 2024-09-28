import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/diario_table.dart';

part 'diario_dao.g.dart';

@DriftAccessor(tables: [DiarioTable])
class DiarioDao extends DatabaseAccessor<AppDb> with _$DiarioDaoMixin {
  final AppDb _db;

  DiarioDao(this._db) : super(_db);

  Future<List<DiarioTableData>> getAllDiarios() => select(diarioTable).get();
}
