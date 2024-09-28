class FotoModel {
  int? id;
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
}
