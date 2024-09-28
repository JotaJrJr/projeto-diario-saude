import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/registro_fezes_table.dart';

part 'registro_fezes_dao.g.dart';

@DriftAccessor(tables: [RegistroFezesTable])
class RegistroFezesDao extends DatabaseAccessor<AppDb> with _$RegistroFezesDaoMixin {
  final AppDb _db;

  RegistroFezesDao(this._db) : super(_db);
}
