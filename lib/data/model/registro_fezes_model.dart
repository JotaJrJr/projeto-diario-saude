import 'package:projeto_diarios_saude/data/app_db.dart';
import 'package:projeto_diarios_saude/data/table/registro_fezes_table.dart';

class RegistroFezesModel {
  String? id;
  String? idUsuario;
  int? data;
  int? duracao;
  int? quantidade;
  int? nivelHumor;
  int? nivelBristrol;
  int? cor;
  String? observacoes;

  RegistroFezesModel({
    this.id,
    this.idUsuario,
    this.data,
    this.duracao,
    this.quantidade,
    this.nivelHumor,
    this.nivelBristrol,
    this.cor,
    this.observacoes,
  });

  RegistroFezesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    idUsuario = json['idUsuario'];
    data = json['data'];
    duracao = json['duracao'];
    quantidade = json['quantidade'];
    nivelHumor = json['nivelHumor'];
    nivelBristrol = json['nivelBristrol'];
    cor = json['cor'];
    observacoes = json['observacoes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['idUsuario'] = idUsuario;
    data['data'] = data;
    data['duracao'] = duracao;
    data['quantidade'] = quantidade;
    data['nivelHumor'] = nivelHumor;
    data['nivelBristrol'] = nivelBristrol;
    data['cor'] = cor;
    data['observacoes'] = observacoes;
    return data;
  }

  RegistroFezesModel.fromData(RegistroFezesTableData data) {
    id = data.id;
    idUsuario = data.idUsuario;
    this.data = data.data;
    duracao = data.duracao;
    quantidade = data.quantidade;
    nivelHumor = data.nivelHumor;
    nivelBristrol = data.nivelBristrol;
    cor = data.cor;
    observacoes = data.observacoes;
  }

  RegistroFezesTableData toData() {
    return RegistroFezesTableData(
      id: id!,
      idUsuario: idUsuario!,
      data: data!,
      duracao: duracao!,
      quantidade: quantidade!,
      nivelHumor: nivelHumor!,
      nivelBristrol: nivelBristrol!,
      cor: cor!,
      observacoes: observacoes!,
    );
  }
}
