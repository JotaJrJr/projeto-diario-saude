import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';
import 'package:projeto_diarios_saude/data/services/caracteristica_service_impl.dart';
import 'package:projeto_diarios_saude/domain/services/caracteristica_service.dart';
import 'package:projeto_diarios_saude/domain/services/registro_fezes_service.dart';
import 'package:uuid/uuid.dart';

class FormularioCrohnViewModel extends ChangeNotifier {
  final RegistroFezesService fezesService;
  final CaracteristicaService caracteristicaService;

  int _sliderValue = 1;
  int? _tipoEnum;
  Set<int> _selectedCaracteristicas = {};
  List<CaracteristicaModel> _listCaracteristicas = [];

  TextEditingController descricaoController = TextEditingController();
  TextEditingController nomeCaracteristicaController = TextEditingController();
  TextEditingController descricaoCaracteristicaController = TextEditingController();

  FormularioCrohnViewModel({
    required this.fezesService,
    required this.caracteristicaService,
  });

  int get sliderValue => _sliderValue;
  int? get tipoFezes => _tipoEnum;
  Set<int> get selectedCaracteristicas => _selectedCaracteristicas;
  List<CaracteristicaModel> get listCaracteristicas => _listCaracteristicas;

  void updateSliderValue(int newValue) {
    _sliderValue = newValue;
    notifyListeners();
  }

  void selectFezesType(int value) {
    _tipoEnum = value;
    notifyListeners();
  }

  void toggleCaracteristica(int index) {
    if (_selectedCaracteristicas.contains(index)) {
      _selectedCaracteristicas.remove(index);
    } else {
      _selectedCaracteristicas.add(index);
    }
    notifyListeners();
  }

  Future<void> insertCaracteristica() async {
    final CaracteristicaModel model = CaracteristicaModel(
      id: const Uuid().v4(),
      nome: nomeCaracteristicaController.text,
      descricao: descricaoCaracteristicaController.text,
      idTipoDiario: null,
    );

    await caracteristicaService.save(model);
  }

  Future<void> queryAllCaracteristicas() async {
    _listCaracteristicas = await caracteristicaService.queryAll();
  }
}
