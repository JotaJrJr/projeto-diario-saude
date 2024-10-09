import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/formulario_crohn/view/formulario_crohn_page.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/lista_formulario_crohn/view/lista_formulario_crohn_page.dart';
import 'package:projeto_diarios_saude/features/rotina_pele/formulario_rotina_pele/view/formulario_rotina_pele_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
            ],
          ),
        ),
      ),
    );
  }
}
