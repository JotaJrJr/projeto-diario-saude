import 'dart:convert';

import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/model/diario_model.dart';
import 'package:projeto_diarios_saude/features/diario_crohn/models/caracteristica_model_page.dart';
import 'package:uuid/uuid.dart';

class RegistroFezesModel extends DiarioModel {
  String? idDiario;
  int? duracao;
  int? quantidade;
  int? nivelHumor;
  int? nivelBristrol;
  int? cor;
  String? observacoes;
  List<CaracteristicaModelPage>? caracteristicas;

  RegistroFezesModel({
    this.idDiario,
    this.duracao,
    this.quantidade,
    this.nivelHumor,
    this.nivelBristrol,
    this.cor,
    this.observacoes,
    this.caracteristicas,
    super.descricao,
    super.nome,
  });

  RegistroFezesModel.fromJson(Map<String, dynamic> jsonValue) {
    idDiario = jsonValue['idDiario'];
    duracao = jsonValue['duracao'];
    quantidade = jsonValue['quantidade'];
    nivelHumor = jsonValue['nivelHumor'];
    nivelBristrol = jsonValue['nivelBristrol'];
    cor = jsonValue['cor'];
    observacoes = jsonValue['observacoes'];
    if (jsonValue['caracteristicas'] != null) {
      caracteristicas = (json.decode(jsonValue['caracteristicas']) as List).map((item) => CaracteristicaModelPage.fromJson(item)).toList();
    }
    descricao = jsonValue['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['idDiario'] = idDiario;
    data['data'] = data;
    data['duracao'] = duracao;
    data['quantidade'] = quantidade;
    data['nivelHumor'] = nivelHumor;
    data['nivelBristrol'] = nivelBristrol;
    data['cor'] = cor;
    data['observacoes'] = observacoes;
    if (caracteristicas != null) {
      data['caracteristicas'] = json.encode(caracteristicas!.map((item) => item.toJson()).toList());
    }
    data['nome'] = nome;
    data['descricao'] = descricao;
    return data;
  }

  RegistroFezesModel.fromData(RegistroFezesTableData data) {
    idDiario = data.idDiario;
    duracao = data.duracao;
    quantidade = data.quantidade;
    nivelHumor = data.nivelHumor;
    nivelBristrol = data.nivelBristrol;
    cor = data.cor;
    observacoes = data.observacoes;
    if (data.caracteristicas != null) {
      caracteristicas = (json.decode(data.caracteristicas!) as List).map((item) => CaracteristicaModelPage.fromJson(item)).toList();
    }
  }

  RegistroFezesTableData toData() {
    // idDiario = idDiario ?? const Uuid().v4();
    return RegistroFezesTableData(
      idDiario: idDiario!,
      duracao: duracao,
      quantidade: quantidade,
      nivelHumor: nivelHumor,
      nivelBristrol: nivelBristrol,
      cor: cor,
      observacoes: observacoes,
      caracteristicas: json.encode(caracteristicas?.map((item) => item.toJson()).toList() ?? []),
    );
  }
}
