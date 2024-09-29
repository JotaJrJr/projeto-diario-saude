import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/registro_fezes_table.dart';

part 'registro_fezes_dao.g.dart';

@DriftAccessor(tables: [RegistroFezesTable])
class RegistroFezesDao extends DatabaseAccessor<AppDb> with _$RegistroFezesDaoMixin {
  final AppDb _db;

  RegistroFezesDao(this._db) : super(_db);

  Future<List<RegistroFezesTableData>> queryAll() => select(registroFezesTable).get();

  Future modify(Insertable<RegistroFezesTableData> data) => update(registroFezesTable).replace(data);

  Future save(Insertable<RegistroFezesTableData> data) => into(registroFezesTable).insert(data);

  Future insertOrUpdate(RegistroFezesTableData data) async {
    return await (select(registroFezesTable)
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

  Future<List<RegistroFezesTableData>> queryByPeriodo(int inicio, int fim) async {
    return (select(registroFezesTable)..where((tbl) => tbl.data.isBetweenValues(inicio, fim))).get();
  }

  Future<RegistroFezesTableData> queryById(String id) {
    return (select(registroFezesTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future remove(Insertable<RegistroFezesTableData> data) => delete(registroFezesTable).delete(data);

  Future removeAll() => delete(registroFezesTable).go();
}
