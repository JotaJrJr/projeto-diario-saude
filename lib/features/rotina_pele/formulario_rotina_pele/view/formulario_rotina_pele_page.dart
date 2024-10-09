import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/features/rotina_pele/formulario_rotina_pele/viewmodel/formulario_rotina_pele_view_model.dart';

class FormularioRotinaPelePage extends StatefulWidget {
  const FormularioRotinaPelePage({super.key});

  @override
  State<FormularioRotinaPelePage> createState() => _FormularioRotinaPelePageState();
}

class _FormularioRotinaPelePageState extends State<FormularioRotinaPelePage> {
  late FormularioRotinaPeleViewModel _viewModel;

  @override
  void initState() {
    super.initState();
    _viewModel = FormularioRotinaPeleViewModel();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Formulário Rotina Pele"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: Column(
            children: [
              TextField(
                controller: _viewModel.nomeController,
                decoration: const InputDecoration(labelText: "Nome"),
              ),
              TextField(
                controller: _viewModel.descricaoController,
                decoration: const InputDecoration(labelText: "Descrição"),
              ),
              const SizedBox(height: 12),
              Row(
                children: [
                  const Text("Produtos"),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.add),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _showFotoOptionDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("Como prosseguir?"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) => const FormularioCrohnPage()));
                },
                child: Text("Tirar foto"),
              ),
              TextButton(
                onPressed: () {},
                child: Text("Escolher foto"),
              ),
            ],
          ),
        );
      },
    );
  }
}
