import 'package:projeto_diarios_saude/data/table/rotina_pele_table.dart';

class RotinaPeleModel {
  String? id;
  int? dateInicio;
  int? dateFim;
  String? nome;
  String? descricao;

  RotinaPeleModel({
    this.id,
    this.dateInicio,
    this.dateFim,
    this.nome,
    this.descricao,
  });

  RotinaPeleModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    dateInicio = json['dateInicio'];
    dateFim = json['dateFim'];
    nome = json['nome'];
    descricao = json['descricao'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['id'] = id;
    data['dateInicio'] = dateInicio;
    data['dateFim'] = dateFim;
    data['nome'] = nome;
    data['descricao'] = descricao;
    return data;
  }

  // RotinaPeleModel.fromData(RotinaPeleTableData data) {}
}
