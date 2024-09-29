import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/caracteristica_table.dart';

part 'caracteristica_dao.g.dart';

@DriftAccessor(tables: [CaracteristicaTable])
class CaracteristicaDao extends DatabaseAccessor<AppDb> with _$CaracteristicaDaoMixin {
  final AppDb _db;

  CaracteristicaDao(this._db) : super(_db);

  Future<List<CaracteristicaTableData>> queryAll() => select(caracteristicaTable).get();

  Future modify(Insertable<CaracteristicaTableData> data) => update(caracteristicaTable).replace(data);

  Future save(Insertable<CaracteristicaTableData> data) => into(caracteristicaTable).insert(data);

  Future insertOrUpdate(CaracteristicaTableData data) async {
    return await (select(caracteristicaTable)
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

  Future<CaracteristicaTableData> queryById(String id) {
    return (select(caracteristicaTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future<CaracteristicaTableData> queryByNome(String nome) {
    return (select(caracteristicaTable)..where((tbl) => tbl.nome.equals(nome))).getSingle();
  }

  Future<List<CaracteristicaTableData>> queryByTipoDiario(int idTipoDiario) {
    return (select(caracteristicaTable)..where((tbl) => tbl.idTipoDiario.equals(idTipoDiario))).get();
  }

  Future remove(Insertable<CaracteristicaTableData> data) => delete(caracteristicaTable).delete(data);

  Future removeAll() => delete(caracteristicaTable).go();
}
