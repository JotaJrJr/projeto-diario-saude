import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:uuid/uuid.dart';

class CaracteristicaModel {
  String? id;
  String? idDiario;
  String? nome;
  String? descricao;
  String? idTipoDiario;

  CaracteristicaModel({this.id, this.nome, this.descricao, this.idTipoDiario});

  CaracteristicaModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idDiario = json['idDiario'];
    nome = json['nome'];
    descricao = json['descricao'];
    idTipoDiario = json['idTipoDiario'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idDiario'] = idDiario;
    data['nome'] = nome;
    data['descricao'] = descricao;
    data['idTipoDiario'] = idTipoDiario;
    return data;
  }

  CaracteristicaModel.fromData(CaracteristicaTableData data) {
    id = data.id;
    idDiario = data.idDiario;
    nome = data.nome;
    descricao = data.descricao;
    idTipoDiario = data.idTipoDiario;
  }

  CaracteristicaTableData toData() {
    id = id ?? const Uuid().v4();
    return CaracteristicaTableData(
      id: id!,
      idDiario: idDiario,
      nome: nome,
      descricao: descricao,
      idTipoDiario: idTipoDiario,
    );
  }
}
