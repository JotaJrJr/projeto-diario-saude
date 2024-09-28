import 'package:projeto_diarios_saude/data/app_db.dart';

class FotoModel {
  String? id;
  String? caminho;
  String? descricao;
  int? idTipoDiario;

  FotoModel({this.id, this.caminho, this.descricao, this.idTipoDiario});

  FotoModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    caminho = json['caminho'];
    descricao = json['descricao'];
    idTipoDiario = json['idTipoDiario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['caminho'] = caminho;
    data['descricao'] = descricao;
    data['idTipoDiario'] = idTipoDiario;
    return data;
  }

  FotoModel.fromData(FotoTableData data) {
    id = data.id;
    caminho = data.caminho;
    descricao = data.descricao;
    idTipoDiario = data.idTipoDiario;
  }

  FotoTableData toData() {
    return FotoTableData(
      id: id!,
      caminho: caminho,
      descricao: descricao,
      idTipoDiario: idTipoDiario,
    );
  }
}
