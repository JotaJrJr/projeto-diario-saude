import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/services/notification_service_impl.dart';
import 'package:projeto_diarios_saude/features/splash/view/splash_page.dart';

import 'data/dao/notification_dao.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppDb>(
          create: (_) => AppDb(),
          dispose: (_, db) => db.close(),
        ),
        ProxyProvider<AppDb, NotificationDao>(
          update: (_, appDb, __) => NotificationDao(appDb),
        ),
        ProxyProvider<NotificationDao, NotificationServiceImpl>(
          update: (_, notificationDao, __) => NotificationServiceImpl(notificationDao),
        ),
      ],
      child: MaterialApp(
        home: Consumer<NotificationServiceImpl>(
          builder: (context, notificationService, child) {
            return SplashPage(notificationService: notificationService);
          },
        ),
      ),
    );
  }
}
