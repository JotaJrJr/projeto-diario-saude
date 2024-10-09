class CaracteristicaModelPage {
  final String? id;
  final String? nome;
  final String? descricao;
  final bool? isEnum;

  CaracteristicaModelPage(this.id, this.nome, this.descricao, this.isEnum);

  factory CaracteristicaModelPage.fromJson(Map<String, dynamic> json) {
    return CaracteristicaModelPage(
      json['id'] as String?,
      json['nome'] as String?,
      json['descricao'] as String?,
      json['isEnum'] as bool?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nome': nome,
      'descricao': descricao,
      'isEnum': isEnum,
    };
  }
}
