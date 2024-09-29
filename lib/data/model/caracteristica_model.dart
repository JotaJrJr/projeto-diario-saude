import 'package:projeto_diarios_saude/data/app_db.dart';

class CaracteristicaModel {
  String? id;
  String? nome;
  String? descricao;
  int? idTipoDiario;

  CaracteristicaModel({this.id, this.nome, this.descricao, this.idTipoDiario});

  CaracteristicaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    idTipoDiario = json['idTipoDiario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['nome'] = nome;
    data['descricao'] = descricao;
    data['idTipoDiario'] = idTipoDiario;
    return data;
  }

  CaracteristicaModel.fromData(CaracteristicaTableData data) {
    id = data.id;
    nome = data.nome;
    descricao = data.descricao;
    idTipoDiario = data.idTipoDiario;
  }

  CaracteristicaTableData toData() {
    return CaracteristicaTableData(
      id: id!,
      nome: nome,
      descricao: descricao,
      idTipoDiario: idTipoDiario,
    );
  }
}
