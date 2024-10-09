import 'package:drift/drift.dart';
import 'package:projeto_diarios_saude/data/dao/notification_dao.dart';
import 'package:projeto_diarios_saude/data/model/notification_model.dart';
import 'package:projeto_diarios_saude/domain/services/notification_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationServiceImpl implements NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();
  final NotificationDao _dao;

  NotificationServiceImpl(this._dao);

  @override
  Future<void> cancelAllNotifications() {
    // TODO: implement cancelAllNotifications
    throw UnimplementedError();
  }

  @override
  Future<void> cancelNotification(String id) {
    // TODO: implement cancelNotification
    throw UnimplementedError();
  }

  @override
  Future<List<NotificationModel>> queryAll() {
    return _dao.queryAll().then((value) => value.map((e) => NotificationModel.fromData(e)).toList());
  }

  @override
  Future<void> initialize() async {
    const android = AndroidInitializationSettings('@mipmap/icon_forca_agro');
    const ios = DarwinInitializationSettings();

    await _notificationsPlugin.initialize(
      const InitializationSettings(
        android: android,
        iOS: ios,
      ),
    );
  }

  @override
  Future<NotificationModel> insertOrUpdate(NotificationModel model) {
    return _dao.insertOrUpdate(model.toData()).then((value) => model);
  }

  @override
  Future<NotificationModel> queryById(String id) {
    return _dao.queryById(id).then((value) => NotificationModel.fromData(value));
  }

  @override
  Future<void> remove(NotificationModel model) {
    return _dao.remove(model.toData());
  }

  @override
  Future<void> removeAll() {
    return _dao.removeAll();
  }

  @override
  Future<NotificationModel> save(NotificationModel model) {
    return _dao.save(model.toData()).then((value) => model);
  }

  @override
  Future<void> scheduleNotification({
    required String id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String recurrencePattern = 'Daily',
    List<String> specificDays = const [],
  }) async {
    DateTimeComponents? matchComponents;
  }
}
