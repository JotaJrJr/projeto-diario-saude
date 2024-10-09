import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/rotina_pele_table.dart';

part 'rotina_pele_dao.g.dart';

@DriftAccessor(tables: [RotinaPeleTable])
class RotinaPeleDao extends DatabaseAccessor<AppDb> with _$RotinaPeleDaoMixin {
  final AppDb _db;

  RotinaPeleDao(this._db) : super(_db);

  Future<List<RotinaPeleTableData>> queryAll() => select(rotinaPeleTable).get();

  Future modify(Insertable<RotinaPeleTableData> data) => update(rotinaPeleTable).replace(data);

  Future save(Insertable<RotinaPeleTableData> data) => into(rotinaPeleTable).insert(data);

  Future insertOrUpdate(RotinaPeleTableData data) async {
    return await (select(rotinaPeleTable)
          ..where((tbl) => tbl.idDiario.equals(data.idDiario))
          ..limit(1))
        .getSingleOrNull()
        .then((value) {
      if (value != null) {
        modify(data);
      } else {
        return save(data);
      }
    });
  }

  Future<RotinaPeleTableData> queryById(String id) {
    return (select(rotinaPeleTable)..where((tbl) => tbl.idDiario.equals(id))).getSingle();
  }

  Future remove(Insertable<RotinaPeleTableData> data) => delete(rotinaPeleTable).delete(data);

  Future removeAll() => delete(rotinaPeleTable).go();
}
