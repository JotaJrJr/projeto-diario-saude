import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import '../table/foto_table.dart';

part 'foto_dao.g.dart';

@DriftAccessor(tables: [FotoTable])
class FotoDao extends DatabaseAccessor<AppDb> with _$FotoDaoMixin {
  final AppDb _db;

  FotoDao(this._db) : super(_db);
}
