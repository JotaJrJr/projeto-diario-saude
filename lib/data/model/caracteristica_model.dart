class CaracteristicaModel {
  int? id;
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
}
