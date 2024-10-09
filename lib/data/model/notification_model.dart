import 'package:projeto_diarios_saude/data/app_db.dart';

class NotificationModel {
  final String id;
  final String? idAtividade;
  final String title;
  final String? body;
  final DateTime scheduledTime;
  final bool isRecurring;
  final String? recurrencePattern;
  final List<String> specificDays;

  NotificationModel({
    required this.id,
    this.idAtividade,
    required this.title,
    this.body,
    required this.scheduledTime,
    this.isRecurring = false,
    this.recurrencePattern,
    this.specificDays = const [],
  });

  factory NotificationModel.fromJson(Map<String, dynamic> json) {
    return NotificationModel(
      id: json['id'] as String,
      idAtividade: json['idAtividade'] as String?,
      title: json['title'] as String,
      body: json['body'] as String?,
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(json['scheduledTime'] as int),
      isRecurring: json['isRecurring'] as bool,
      recurrencePattern: json['recurrencePattern'] as String?,
      specificDays: (json['specificDays'] as String?)?.split(',') ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'idAtividade': idAtividade,
      'title': title,
      'body': body,
      'scheduledTime': scheduledTime.millisecondsSinceEpoch,
      'isRecurring': isRecurring,
      'recurrencePattern': recurrencePattern,
      'specificDays': specificDays.join(','),
    };
  }

  factory NotificationModel.fromData(NotificationTableData data) {
    return NotificationModel(
      id: data.id,
      idAtividade: data.idAtividade,
      title: data.title,
      body: data.body,
      scheduledTime: DateTime.fromMillisecondsSinceEpoch(data.scheduledTime),
      isRecurring: data.isRecurring,
      recurrencePattern: data.recurrencePattern,
      specificDays: (data.specificDays ?? '').split(','),
    );
  }

  NotificationTableData toData() {
    return NotificationTableData(
      id: id,
      idAtividade: idAtividade,
      title: title,
      body: body,
      scheduledTime: scheduledTime.millisecondsSinceEpoch,
      isRecurring: isRecurring,
      recurrencePattern: recurrencePattern,
      specificDays: specificDays.join(','),
    );
  }
}
