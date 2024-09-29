import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/diario_table.dart';

part 'diario_dao.g.dart';

@DriftAccessor(tables: [DiarioTable])
class DiarioDao extends DatabaseAccessor<AppDb> with _$DiarioDaoMixin {
  final AppDb _db;

  DiarioDao(this._db) : super(_db);

  Future<List<DiarioTableData>> queryAll() => select(diarioTable).get();

  Future modify(Insertable<DiarioTableData> data) => update(diarioTable).replace(data);

  Future save(Insertable<DiarioTableData> data) => into(diarioTable).insert(data);

  Future insertOrUpdate(DiarioTableData data) async {
    return await (select(diarioTable)
          ..where((tbl) => tbl.id.equals(data.id))
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

  Future<DiarioTableData> queryById(String id) {
    return (select(diarioTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }
}
