import 'package:projeto_diarios_saude/data/model/notification_model.dart';

abstract class NotificationService {
  Future<void> initialize();
  Future<void> scheduleNotification({
    required String id,
    required String title,
    required String body,
    required DateTime scheduledTime,
    String recurrencePattern,
    List<String> specificDays,
  });
  Future<void> cancelNotification(String id);
  Future<void> cancelAllNotifications();
  Future<void> showNotification({required int id, required String title, required String body});

  // database functions
  Future<List<NotificationModel>> queryAll();
  Future<NotificationModel> queryById(String id);
  Future<NotificationModel> save(NotificationModel model);
  Future<NotificationModel> insertOrUpdate(NotificationModel model);
  Future<void> remove(NotificationModel model);
  Future<void> removeAll();
}
