import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/services/registro_fezes_impl.dart';
import 'package:projeto_diarios_saude/domain/services/registro_fezes_service.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/lista_formulario_crohn/viewmodel/lista_formulario_crohn_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../data/model/registro_fezes_model.dart';

class ListaFormularioCrohnPage extends StatefulWidget {
  const ListaFormularioCrohnPage({super.key});

  @override
  State<ListaFormularioCrohnPage> createState() => _ListaFormularioCrohnPageState();
}

class _ListaFormularioCrohnPageState extends State<ListaFormularioCrohnPage> {
  late ListaFormularioCrohnViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    var appDb = Provider.of<AppDb>(context, listen: false);

    _viewModel = ListaFormularioCrohnViewModel(service: RegistroFezesImpl(appDb.registroFezesDao));
    _viewModel.queryAll();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Listagem"),
      ),
      body: AnimatedBuilder(
        animation: _viewModel,
        builder: (_, __) {
          if (_viewModel.isLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (_viewModel.lista.isEmpty) {
            return const Center(
              child: Text("tem nada"),
            );
          } else {
            return ListView.builder(
              itemCount: _viewModel.lista.length,
              itemBuilder: (context, index) {
                final item = _viewModel.lista[index];
                return buildListagem(item);
              },
            );
          }
        },
      ),
    );
  }

  Widget buildListagem(RegistroFezesModel item) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.5), blurRadius: 5.0)],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("ID: ${item.idDiario}"),
          Text("Descrição: ${item.observacoes ?? ""}"),
          Text("Humor: ${item.nivelHumor ?? ""}"),
          Text("Cor: ${item.cor?.toString() ?? ""}"),
          Text("Duração: ${item.duracao?.toString() ?? ""}"),
          Text("Nível Bristol: ${item.nivelBristrol?.toString() ?? ""}"),
          const SizedBox(height: 8.0),
          const Text("Características:", style: TextStyle(fontWeight: FontWeight.bold)),
          ...?item.caracteristicas?.map(
            (unique) => ListTile(
              title: Text(unique.nome ?? ""),
              subtitle: Text(unique.descricao ?? ""),
            ),
          ),
          CircleAvatar(
            backgroundColor: item.cor != null ? Color(item.cor!) : Colors.brown,
          ),
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              onPressed: () {
                _viewModel.remove(item);
              },
              icon: Icon(Icons.delete),
            ),
          ),
        ],
      ),
    );
  }
}
