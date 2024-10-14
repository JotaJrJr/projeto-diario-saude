import 'package:flutter/foundation.dart';
import 'package:projeto_diarios_saude/domain/services/notification_service.dart';

class HomeViewModel extends ChangeNotifier {
  final NotificationService notificationService;

  HomeViewModel({required this.notificationService});

  Future<void> showNotification() async {
    await notificationService.showNotification(id: 0, title: "teste", body: "body teste");
  }

  Future<void> scheduleNotification() async {
    await notificationService.scheduleNotification(
      id: '1',
      title: 'Reminder',
      body: 'notificacao foda',
      scheduledTime: DateTime.now().add(const Duration(minutes: 1)), // para daqui 1 minuto
      recurrencePattern: 'Daily',
    );
  }
}
