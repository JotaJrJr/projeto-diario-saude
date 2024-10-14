import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/services/notification_service_impl.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/formulario_crohn/view/formulario_crohn_page.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/lista_formulario_crohn/view/lista_formulario_crohn_page.dart';
import 'package:projeto_diarios_saude/features/home/viewmodel/home_view_model.dart';
import 'package:projeto_diarios_saude/features/rotina_pele/formulario_rotina_pele/view/formulario_rotina_pele_page.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late HomeViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    var appDb = Provider.of<AppDb>(context, listen: false);

    _viewModel = HomeViewModel(notificationService: NotificationServiceImpl(appDb.notificationDao));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(
            children: [
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FormularioCrohnPage()));
                },
                child: const Text("Formulário Crohn"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ListaFormularioCrohnPage()));
                },
                child: const Text("Lista Formulário"),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const FormularioRotinaPelePage()));
                },
                child: const Text("Formulário Rotina Pele"),
              ),
              TextButton(
                onPressed: () {
                  _viewModel.showNotification();
                },
                child: const Text("Notificação simples"),
              ),
              TextButton(
                onPressed: () {
                  _viewModel.scheduleNotification();
                },
                child: const Text("Schedule Notification"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
