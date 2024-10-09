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

  Future<List<RegistroFezesTableData>> queryByPeriodo(int inicio, int fim) async {
    var query = select(registroFezesTable).join(
      [
        innerJoin(registroFezesTable, _db.diarioTable.id.equalsExp(registroFezesTable.idDiario)),
      ],
    );

    return query.map((row) {
      final fezes = row.readTable(registroFezesTable);
      final diario = row.readTable(_db.diarioTable);

      return RegistroFezesTableData(
        idDiario: diario.id,
        duracao: fezes.duracao,
        quantidade: fezes.quantidade,
        nivelBristrol: fezes.nivelBristrol,
        nivelHumor: fezes.nivelHumor,
        cor: fezes.cor,
        observacoes: fezes.observacoes,
      );
    }).get();
  }

  Future<RegistroFezesTableData> queryById(String id) {
    return (select(registroFezesTable)..where((tbl) => tbl.idDiario.equals(id))).getSingle();
  }

  Future remove(Insertable<RegistroFezesTableData> data) => delete(registroFezesTable).delete(data);

  Future removeAll() => delete(registroFezesTable).go();
}
