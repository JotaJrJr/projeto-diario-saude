import 'package:drift/drift.dart';

class NotificationTable extends Table {
  TextColumn get id => text().named('ID')();
  TextColumn get idAtividade => text().nullable().named('ID_ATIVIDADE')();
  IntColumn get scheduledTime => integer().named('SCHEDULED_TIME')();
  TextColumn get title => text().named('TITLE')();
  TextColumn get body => text().nullable().named('BODY')();
  BoolColumn get isRecurring => boolean().withDefault(const Constant(false)).named('IS_RECURRING')();
  TextColumn get recurrencePattern => text().nullable().named('RECURRENCE_PATTERN')();
  TextColumn get specificDays => text().nullable().named('SPECIFIC_DAYS')(); // Separado por vírgular assim ô: 'Mon,Wed,Fri'

  @override
  Set<Column> get primaryKey => {id};
}
