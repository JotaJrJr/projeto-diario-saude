class DiarioModel {
  int? id;
  String? nome;
  String? descricao;
  // int? tipoDiario;
  List<int>? idsOcorrencia;

  DiarioModel({
    this.id,
    this.nome,
    this.descricao,
    this.idsOcorrencia,
  });

  DiarioModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nome = json['nome'];
    descricao = json['descricao'];
    idsOcorrencia = json['idsOcorrencia'].cast<int>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};

    data['id'] = id;
    data['nome'] = nome;
    data['descricao'] = descricao;
    data['idsOcorrencia'] = idsOcorrencia;

    return data;
  }
}
