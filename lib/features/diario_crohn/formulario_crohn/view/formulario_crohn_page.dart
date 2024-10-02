import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:projeto_diarios_saude/data/services/caracteristica_service_impl.dart';
import 'package:projeto_diarios_saude/data/services/registro_fezes_impl.dart';
import 'package:projeto_diarios_saude/domain/icons_app.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/formulario_crohn/viewmodel/formulario_crohn_view_model.dart';
import 'package:provider/provider.dart';

import '../../../../data/app_db.dart';
import '../../../../domain/enums/caracteristicas_fezes_enum.dart';
import '../../../../domain/enums/tipo_fezes_enum.dart';

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
      fezesService: RegistroFezesImpl(
        appDb.registroFezesDao,
      ),
      caracteristicaService: CaracteristicaServiceImpl(
        appDb.caracteristicaDao,
      ),
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
            child: Column(
              children: [
                AnimatedBuilder(
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
                        )
                      ],
                    );
                  },
                ),
                AnimatedBuilder(
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
                            leading: SvgPicture.asset(
                              tipo.asset,
                              width: 40,
                              height: 40,
                            ),
                            trailing: Radio<int>(
                              value: index,
                              groupValue: _viewModel.tipoFezes,
                              onChanged: (int? value) {
                                if (value != null) {
                                  _viewModel.selectFezesType(value);
                                  debugPrint(_viewModel.tipoFezes.toString());
                                }
                              },
                            ),
                            onTap: () {
                              _viewModel.selectFezesType(index);
                              debugPrint(_viewModel.tipoFezes.toString());
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
                Container(
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text("Características:"),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add),
                          )
                        ],
                      ),
                      // List the enum here
                      ListView.builder(
                        shrinkWrap: true, // Important to allow it inside a Column
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: CaracteristicasFezesEnum.values.length,
                        itemBuilder: (context, index) {
                          final caracteristica = CaracteristicasFezesEnum.values[index];
                          return CheckboxListTile(
                            title: Text(caracteristica.nome),
                            value: _viewModel.selectedCaracteristicas.contains(index),
                            onChanged: (bool? selected) {
                              _viewModel.toggleCaracteristica(index);
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
                TextField(
                  controller: _viewModel.descricaoController,
                ),
                TextButton(
                  child: Text("Salvar"),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
