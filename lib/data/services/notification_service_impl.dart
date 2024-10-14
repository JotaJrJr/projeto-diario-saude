import 'package:flutter_timezone/flutter_timezone.dart';
import 'package:projeto_diarios_saude/data/dao/notification_dao.dart';
import 'package:projeto_diarios_saude/data/model/notification_model.dart';
import 'package:projeto_diarios_saude/domain/services/notification_service.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;
import 'package:timezone/data/latest_all.dart' as tz;

class NotificationServiceImpl implements NotificationService {
  final FlutterLocalNotificationsPlugin _notificationsPlugin = FlutterLocalNotificationsPlugin();
  final NotificationDao _dao;

  NotificationServiceImpl(this._dao);

  @override
  Future<void> cancelAllNotifications() async {
    await _notificationsPlugin.cancelAll();
  }

  @override
  Future<void> cancelNotification(String id) async {
    await _notificationsPlugin.cancel(int.parse(id));
  }

  @override
  Future<List<NotificationModel>> queryAll() {
    return _dao.queryAll().then((value) => value.map((e) => NotificationModel.fromData(e)).toList());
  }

  @override
  Future<void> initialize() async {
    tz.initializeTimeZones();
    final String timeZoneName = await FlutterTimezone.getLocalTimezone();
    tz.setLocalLocation(tz.getLocation(timeZoneName));

    const android = AndroidInitializationSettings('@mipmap/ic_launcher');
    final DarwinInitializationSettings ios = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
      onDidReceiveLocalNotification: _ondidReceiveLocalNotification,
    );

    final InitializationSettings settings = InitializationSettings(
      android: android,
      iOS: ios,
    );

    await _notificationsPlugin.initialize(
      settings,
      onDidReceiveNotificationResponse: _onDidReceiveNotificationResponse,
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
    final details = await _notificationDetails();

    final tzScheduledDate = tz.TZDateTime.from(scheduledTime, tz.local);

    try {
      if (recurrencePattern == 'Daily') {
        await _notificationsPlugin.zonedSchedule(
          int.parse(id),
          title,
          body,
          tzScheduledDate,
          details,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
          matchDateTimeComponents: DateTimeComponents.time, // Repeats every day at the same time
        );
        print('Daily scheduled notification set for: $scheduledTime');
      } else if (recurrencePattern == 'Weekly') {
        // Repeat on specific days of the week
        await _notificationsPlugin.zonedSchedule(
          int.parse(id),
          title,
          body,
          tzScheduledDate,
          details,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
          matchDateTimeComponents: DateTimeComponents.dayOfWeekAndTime, // Repeats on specific days
        );
        print('Weekly scheduled notification set for: $scheduledTime on specific days: $specificDays');
      } else {
        // One-time notification
        await _notificationsPlugin.zonedSchedule(
          int.parse(id),
          title,
          body,
          tzScheduledDate,
          details,
          androidAllowWhileIdle: true,
          uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
          matchDateTimeComponents: null,
        );
        print('One-time scheduled notification set for: $scheduledTime');
      }
    } catch (e) {
      print('Error scheduling notification: $e');
    }
  }

  @override
  Future<void> showNotification({required int id, required String title, required String body}) async {
    final details = await _notificationDetails();
    print('Attempting to show notification: $title with body: $body'); // Debug log

    try {
      await _notificationsPlugin.show(id, title, body, details);
      print('Notification successfully triggered!');
    } catch (e) {
      print('Error showing notification: $e');
    }
  }

  // Future<void> showNotification({required int id, required String title, required String body}) async {
  //   final details = await _notificationDetails();

  //   await _notificationsPlugin.show(id, title, body, details);
  // }

  Future<NotificationDetails> _notificationDetails() async {
    const AndroidNotificationDetails androidNotificationDetails = AndroidNotificationDetails(
      'notification_details',
      'notifications',
      channelDescription: 'Android Notifications',
      importance: Importance.max,
      priority: Priority.high,
      enableVibration: true,
      playSound: true,
    );

    const DarwinNotificationDetails iOSNotificationDetails = DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
    );

    return const NotificationDetails(
      android: androidNotificationDetails,
      iOS: iOSNotificationDetails,
    );
  }

  void _onDidReceiveNotificationResponse(NotificationResponse notificationResponse) {
    print('Notification tapped: ${notificationResponse.payload}');
    // handle navegação de acorod com payload se tive
  }

  void _ondidReceiveLocalNotification(int id, String? title, String? body, String? payload) {
    print('Local Notification received -> id: $id, title: $title, body: $body, payload: $payload');
    // handle o que fazer quando recebe notificacao llcaol enquanto o app tiver no foregrounda ianda
  }
}
