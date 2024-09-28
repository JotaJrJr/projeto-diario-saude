import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import '../table/foto_table.dart';

part 'foto_dao.g.dart';

@DriftAccessor(tables: [FotoTable])
class FotoDao extends DatabaseAccessor<AppDb> with _$FotoDaoMixin {
  final AppDb _db;

  FotoDao(this._db) : super(_db);

  Future<List<FotoTableData>> getAll() => select(fotoTable).get();

  Future insertOrUpdate(Insertable<FotoTableData> data) => into(fotoTable).insertOnConflictUpdate(data);

  Future save(Insertable<FotoTableData> data) => into(fotoTable).insert(data);

  Future<FotoTableData> queryById(String id) {
    return (select(fotoTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<List<FotoTableData>> queryByTipoDiario(int idTipoDiario) {
    return (select(fotoTable)..where((tbl) => tbl.idTipoDiario.equals(idTipoDiario))).get();
  }

  Future<FotoTableData> queryByCaminho(String caminho) {
    return (select(fotoTable)..where((tbl) => tbl.caminho.equals(caminho))).getSingle();
  }

  Future remove(Insertable<FotoTableData> data) => delete(fotoTable).delete(data);

  Future removeAll() => delete(fotoTable).go();
}
