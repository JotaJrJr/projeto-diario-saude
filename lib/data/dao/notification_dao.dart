import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/notification_table.dart';

part 'notification_dao.g.dart';

@DriftAccessor(tables: [NotificationTable])
class NotificationDao extends DatabaseAccessor<AppDb> with _$NotificationDaoMixin {
  final AppDb _db;

  NotificationDao(this._db) : super(_db);

  Future<List<NotificationTableData>> queryAll() => select(notificationTable).get();

  Future modify(Insertable<NotificationTableData> data) => update(notificationTable).replace(data);

  Future save(Insertable<NotificationTableData> data) => into(notificationTable).insert(data);

  Future insertOrUpdate(NotificationTableData data) async {
    return await (select(notificationTable)
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

  Future<NotificationTableData> queryById(String id) {
    return (select(notificationTable)..where((tbl) => tbl.id.equals(id))).getSingle();
  }

  Future remove(Insertable<NotificationTableData> data) => delete(notificationTable).delete(data);

  Future removeAll() => delete(notificationTable).go();
}
