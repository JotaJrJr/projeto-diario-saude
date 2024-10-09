import 'package:flutter/material.dart';
import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';
import 'package:projeto_diarios_saude/data/model/registro_fezes_model.dart';
import 'package:projeto_diarios_saude/domain/enums/caracteristicas_fezes_enum.dart';
import 'package:projeto_diarios_saude/domain/enums/crohn_humor_enum.dart';
import 'package:projeto_diarios_saude/domain/services/caracteristica_service.dart';
import 'package:projeto_diarios_saude/domain/services/registro_fezes_service.dart';
import 'package:uuid/uuid.dart';

import '../../models/caracteristica_model_page.dart';

class FormularioCrohnViewModel extends ChangeNotifier {
  final RegistroFezesService fezesService;
  final CaracteristicaService caracteristicaService;

  int _sliderValue = 1;
  int? _tipoEnum;
  final Set<CaracteristicaModelPage> _selectedCaracteristicas = {};
  List<CaracteristicaModel> _listCaracteristicas = [];
  Color _selectedColor = Colors.brown;

  final TextEditingController descricaoController = TextEditingController();
  final TextEditingController nomeCaracteristicaController = TextEditingController();
  final TextEditingController descricaoCaracteristicaController = TextEditingController();

  CrohnHumorEnum? _selectedHumor;

  FormularioCrohnViewModel({
    required this.fezesService,
    required this.caracteristicaService,
  });

  int get sliderValue => _sliderValue;
  int? get tipoFezes => _tipoEnum;
  Set<CaracteristicaModelPage> get selectedCaracteristicas => _selectedCaracteristicas;
  List<CaracteristicaModel> get listCaracteristicas => _listCaracteristicas;
  CrohnHumorEnum? get selectedHumor => _selectedHumor;
  Color get selectedColor => _selectedColor;

  void updateSliderValue(int newValue) {
    if (_sliderValue != newValue) {
      _sliderValue = newValue;
      notifyListeners();
    }
  }

  void setColor(Color color) {
    _selectedColor = color;
    notifyListeners();
  }

  void selectFezesType(int value) {
    if (_tipoEnum != value) {
      _tipoEnum = value;
      notifyListeners();
    }
  }

  void selectHumor(CrohnHumorEnum humor) {
    _selectedHumor = humor;
    notifyListeners();
  }

  void toggleCaracteristicaSelection(CaracteristicaModelPage model) {
    if (model.id == null) return;

    if (_selectedCaracteristicas.any((element) => element.id == model.id)) {
      _selectedCaracteristicas.remove(model);
    } else {
      _selectedCaracteristicas.add(model);
    }
    notifyListeners();
  }

  Future<void> saveCaracteristica() async {
    if (nomeCaracteristicaController.text.isNotEmpty && descricaoCaracteristicaController.text.isNotEmpty) {
      final CaracteristicaModel model = CaracteristicaModel(
        nome: nomeCaracteristicaController.text,
        descricao: descricaoCaracteristicaController.text,
        idTipoDiario: null,
      );
      await caracteristicaService.save(model);
      _listCaracteristicas.add(model);
    }

    getCombinedCaracteristicas();

    notifyListeners();
  }

  Future<void> updateCaracteristica(CaracteristicaModelPage model) async {
    final CaracteristicaModel updatedModel = CaracteristicaModel(
      id: model.id,
      nome: nomeCaracteristicaController.text,
      descricao: descricaoCaracteristicaController.text,
    );

    await caracteristicaService.insertOrUpdate(updatedModel);

    queryAllCaracteristicas();
    notifyListeners();
  }

  Future<void> deleteCaracteristica(CaracteristicaModelPage model, int index) async {
    await caracteristicaService.removeById(model.id!);

    _listCaracteristicas = _listCaracteristicas.where((value) => value.id != model.id).toList();

    debugPrint(_listCaracteristicas.toString());

    notifyListeners();
  }

  Future<void> queryAllCaracteristicas() async {
    _listCaracteristicas = await caracteristicaService.queryAll();
    notifyListeners();
  }

  List<CaracteristicaModelPage> getCombinedCaracteristicas() {
    final enumCaracteristicas = CaracteristicasFezesEnum.values
        .map(
          (e) => CaracteristicaModelPage(
            e.id,
            e.nome,
            e.descricao,
            true,
          ),
        )
        .toList();

    final dbCaracteristicas = _listCaracteristicas
        .map(
          (e) => CaracteristicaModelPage(
            e.id,
            e.nome,
            e.descricao,
            false,
          ),
        )
        .toList();

    return [...enumCaracteristicas, ...dbCaracteristicas];
  }

  void populateEditFields(CaracteristicaModelPage item) {
    nomeCaracteristicaController.text = item.nome ?? "";
    descricaoCaracteristicaController.text = item.descricao ?? "";
  }

  void disposeControllers() {
    descricaoController.dispose();
    nomeCaracteristicaController.dispose();
    descricaoCaracteristicaController.dispose();
  }

  Future<void> saveRegistroFezes() async {
    RegistroFezesModel model = RegistroFezesModel(
      nome: "",
      idDiario: const Uuid().v4(),
      duracao: 1,
      quantidade: sliderValue,
      nivelHumor: _selectedHumor?.index ?? 2,
      nivelBristrol: _tipoEnum,
      cor: selectedColor.value,
      observacoes: descricaoController.text,
      caracteristicas: _selectedCaracteristicas.toList(),
    );

    try {
      await fezesService.save(model);
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
