import 'package:drift/drift.dart';

class NotificacaoTable extends Table {
  TextColumn get id => text().named('ID')();
  IntColumn get date => integer().nullable().named('DATE')();
}
