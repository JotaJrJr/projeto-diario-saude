import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/features/splash/view/splash_page.dart';
import 'package:provider/provider.dart';

import 'data/app_db.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // runApp(const MyApp());

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppDb>(
          create: (_) => AppDb(),
          // dispose: (_, db) => db.close(),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SplashPage(),
      ),
    );
  }
}
