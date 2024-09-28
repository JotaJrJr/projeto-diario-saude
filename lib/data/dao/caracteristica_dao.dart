import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/caracteristica_table.dart';

part 'caracteristica_dao.g.dart';

@DriftAccessor(tables: [CaracteristicaTable])
class CaracteristicaDao extends DatabaseAccessor<AppDb> with _$CaracteristicaDaoMixin {
  final AppDb _db;

  CaracteristicaDao(this._db) : super(_db);
}
