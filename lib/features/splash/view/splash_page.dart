import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/features/home/view/home_page.dart';
import 'package:projeto_diarios_saude/domain/services/notification_service.dart';

class SplashPage extends StatefulWidget {
  final NotificationService notificationService;

  const SplashPage({super.key, required this.notificationService});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _requestNotificationPermissions();
  }

  Future<void> _requestNotificationPermissions() async {
    try {
      await widget.notificationService.initialize();
      print('Notification service initialized successfully');
    } catch (e) {
      print('Error during notification initialization: $e');
    }

    Future.delayed(const Duration(seconds: 3), () => _navigateToHomePage());
  }

  Future<void> _navigateToHomePage() {
    return Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[400],
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Center(
              child: Text(
                'Splash Screen',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 40),
            child: Text("Projeto - Diário de Saúde"),
          ),
        ],
      ),
    );
  }
}
