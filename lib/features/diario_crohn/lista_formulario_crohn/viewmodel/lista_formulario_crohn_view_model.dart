import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/model/registro_fezes_model.dart';
import 'package:projeto_diarios_saude/domain/services/registro_fezes_service.dart';

class ListaFormularioCrohnViewModel extends ChangeNotifier {
  final RegistroFezesService service;
  List<RegistroFezesModel> lista = [];
  bool isLoading = true;

  ListaFormularioCrohnViewModel({required this.service});

  Future<void> queryAll() async {
    isLoading = true;
    notifyListeners();
    lista = await service.queryAll();

    isLoading = false;
    notifyListeners();
  }

  Future<void> remove(RegistroFezesModel model) async {
    try {
      await service.remove(model);

      lista.removeWhere((item) => item.idDiario == model.idDiario);
    } catch (e) {
      debugPrint('Erro nessa merda: $e');
    }
    notifyListeners();
  }
}
