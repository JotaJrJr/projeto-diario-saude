import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeto_diarios_saude/data/services/caracteristica_service_impl.dart';
import 'package:projeto_diarios_saude/data/services/registro_fezes_impl.dart';
import 'package:projeto_diarios_saude/domain/enums/crohn_humor_enum.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/formulario_crohn/viewmodel/formulario_crohn_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../data/app_db.dart';
import '../../../../domain/enums/tipo_fezes_enum.dart';
import '../../models/caracteristica_model_page.dart';

class FormularioCrohnPage extends StatefulWidget {
  const FormularioCrohnPage({super.key});

  @override
  State<FormularioCrohnPage> createState() => _FormularioCrohnPageState();
}

class _FormularioCrohnPageState extends State<FormularioCrohnPage> {
  late FormularioCrohnViewModel _viewModel;

  @override
  void initState() {
    super.initState();

    var appDb = Provider.of<AppDb>(context, listen: false);
    _viewModel = FormularioCrohnViewModel(
      fezesService: RegistroFezesImpl(appDb.registroFezesDao),
      caracteristicaService: CaracteristicaServiceImpl(appDb.caracteristicaDao),
    );
    _viewModel.queryAllCaracteristicas();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Formulário Crohn"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
          child: AnimatedBuilder(
              animation: _viewModel,
              builder: (_, __) {
                return Column(
                  children: [
                    buildSliderSection(),
                    buildFezesList(),
                    buildColorPicker(),
                    buildHumorList(),
                    buildCaracteristicasSection(),
                    buildDescricaoField(),
                    buildSaveButton(),
                  ],
                );
              }),
        ),
      ),
    );
  }

  Widget buildSliderSection() {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (_, __) {
        return Column(
          children: [
            Slider(
              value: _viewModel.sliderValue.toDouble(),
              min: 1,
              max: 10,
              divisions: 9,
              label: _viewModel.sliderValue.toString(),
              onChanged: (value) {
                _viewModel.updateSliderValue(value.toInt());
              },
            ),
            Text(_viewModel.sliderValue.toString()),
            Visibility(
              visible: _viewModel.sliderValue == 10,
              child: const Text("Como pode uma nádega linda dessa fazer algo feio assim."),
            ),
          ],
        );
      },
    );
  }

  Widget buildHumorList() {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (_, __) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: CrohnHumorEnum.values.map((item) {
            final isSelected = _viewModel.selectedHumor == item;

            return GestureDetector(
              onTap: () => _viewModel.selectHumor(item),
              child: Container(
                decoration: BoxDecoration(
                  color: isSelected ? Colors.blue.withOpacity(0.2) : Colors.transparent,
                  border: Border.all(
                    color: isSelected ? Colors.blue : Colors.grey,
                    width: 2.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SvgPicture.asset(
                      item.asset,
                      width: 40,
                      height: 40,
                    ),
                    const SizedBox(height: 8),
                    Text(item.descricao),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }

  Widget buildFezesList() {
    return AnimatedBuilder(
      animation: _viewModel,
      builder: (_, __) {
        return SizedBox(
          height: 400,
          width: double.infinity,
          child: ListView.builder(
            itemCount: TipoFezesEnum.values.length,
            itemBuilder: (context, index) {
              final tipo = TipoFezesEnum.values[index];
              return ListTile(
                title: Text(tipo.tipo),
                subtitle: Text(tipo.descricao),
                leading: SvgPicture.asset(tipo.asset, width: 40, height: 40),
                trailing: Radio<int>(
                  value: index,
                  groupValue: _viewModel.tipoFezes,
                  onChanged: (int? value) {
                    if (value != null) {
                      _viewModel.selectFezesType(value);
                    }
                  },
                ),
                onTap: () {
                  _viewModel.selectFezesType(index);
                },
              );
            },
          ),
        );
      },
    );
  }

  Widget buildCaracteristicasSection() {
    return Column(
      children: [
        Row(
          children: [
            const Text("Características:"),
            const Spacer(),
            IconButton(
              onPressed: () => _showCaracteristicaDialog(),
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        AnimatedBuilder(
          animation: _viewModel,
          builder: (_, __) {
            final combinedList = _viewModel.getCombinedCaracteristicas();
            return ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: combinedList.length,
              itemBuilder: (context, index) {
                final item = combinedList[index];

                return CheckboxListTile(
                  title: Text(item.nome ?? ""),
                  subtitle: Text(
                    "${item.descricao ?? ""}  - ${item.id}",
                    overflow: TextOverflow.ellipsis,
                  ),
                  value: _viewModel.selectedCaracteristicas.any((x) => x.id == item.id),
                  onChanged: (value) {
                    if (value != null) {
                      _viewModel.toggleCaracteristicaSelection(item);
                    }
                  },
                  controlAffinity: ListTileControlAffinity.leading,
                  secondary: item.isEnum == false
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.edit),
                              onPressed: () => _showEditDialog(item, index),
                            ),
                            IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () => _showDeletingDialog(item, index),
                            ),
                          ],
                        )
                      : null,
                );
              },
            );
          },
        ),
      ],
    );
  }

  Widget buildDescricaoField() {
    return TextField(
      controller: _viewModel.descricaoController,
      decoration: const InputDecoration(labelText: "Descrição"),
    );
  }

  Widget buildColorPicker() {
    return Column(
      children: [
        const Text('Selecione uma cor:'),
        GestureDetector(
          onTap: () => showColorPickerDialog(),
          child: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: _viewModel.selectedColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 2.0),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildSaveButton() {
    return TextButton(
      child: const Text("Salvar"),
      onPressed: () {
        _viewModel.saveRegistroFezes();
      },
    );
  }

  void showColorPickerDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Selecione uma cor'),
          content: SingleChildScrollView(
            child: ColorPicker(
              pickerColor: _viewModel.selectedColor,
              onColorChanged: (Color color) {
                _viewModel.setColor(color);
              },
              pickerAreaHeightPercent: 0.8,
            ),
          ),
          actions: [
            TextButton(
              child: const Text('Fechar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showDeletingDialog(CaracteristicaModelPage item, int index) {
    showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("Apagar Característica"),
            actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text("Cancelar"),
              ),
              TextButton(
                child: const Text("Confirmar"),
                onPressed: () async {
                  await _viewModel.deleteCaracteristica(item, index);
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }

  void _showEditDialog(CaracteristicaModelPage item, int index) {
    _viewModel.populateEditFields(item);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Editar Característica"),
          content: buildCaracteristicaDialogContent(),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancelar"),
            ),
            TextButton(
              child: const Text("Salvar"),
              onPressed: () async {
                await _viewModel.updateCaracteristica(item);
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void _showCaracteristicaDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Adicionar Característica"),
          content: buildCaracteristicaDialogContent(),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text("Cancelar"),
            ),
            TextButton(
              child: const Text("Salvar"),
              onPressed: () async {
                await _viewModel.saveCaracteristica();
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Widget buildCaracteristicaDialogContent() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        TextField(
          controller: _viewModel.nomeCaracteristicaController,
          decoration: const InputDecoration(labelText: "Nome"),
        ),
        TextField(
          controller: _viewModel.descricaoCaracteristicaController,
          decoration: const InputDecoration(labelText: "Descrição"),
        ),
      ],
    );
  }
}
