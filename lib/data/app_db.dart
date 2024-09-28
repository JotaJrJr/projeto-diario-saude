import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

import 'dao_list.dart';
import 'table_list.dart';

import 'package:projeto_diarios_saude/data/table/diario_table.dart';
import 'package:projeto_diarios_saude/data/table/caracteristica_table.dart';
import 'package:projeto_diarios_saude/data/table/foto_table.dart';
import 'package:projeto_diarios_saude/data/table/registro_fezes_table.dart';

import 'package:projeto_diarios_saude/data/dao/diario_dao.dart';
import 'package:projeto_diarios_saude/data/dao/caracteristica_dao.dart';
import 'package:projeto_diarios_saude/data/dao/foto_dao.dart';
import 'package:projeto_diarios_saude/data/dao/registro_fezes_dao.dart';

part 'app_db.g.dart';

@DriftDatabase(tables: TableList.tables, daos: DaoList.daos)
class AppDb extends _$AppDb {
  AppDb() : super(_openConnection());

  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    return NativeDatabase.createInBackground(file);
  });
}
