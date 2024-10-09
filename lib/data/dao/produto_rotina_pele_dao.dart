import 'package:drift/drift.dart';
import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/produto_rotina_pele_table.dart';

part 'produto_rotina_pele_dao.g.dart';

@DriftAccessor(tables: [ProdutoRotinaPeleTable])
class ProdutoRotinaPeleDao extends DatabaseAccessor<AppDb> with _$ProdutoRotinaPeleDaoMixin {
  final AppDb _db;

  ProdutoRotinaPeleDao(this._db) : super(_db);

  Future<List<ProdutoRotinaPeleTableData>> queryAll() => select(produtoRotinaPeleTable).get();

  Future modify(Insertable<ProdutoRotinaPeleTableData> data) => update(produtoRotinaPeleTable).replace(data);

  Future save(Insertable<ProdutoRotinaPeleTableData> data) => into(produtoRotinaPeleTable).insert(data);

  Future insertOrUpdate(ProdutoRotinaPeleTableData data) async {
    return await (select(produtoRotinaPeleTable)
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

  Future<ProdutoRotinaPeleTableData> queryById(String id) {
    return (select(produtoRotinaPeleTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future remove(Insertable<ProdutoRotinaPeleTableData> data) => delete(produtoRotinaPeleTable).delete(data);

  Future removeAll() => delete(produtoRotinaPeleTable).go();
}
