enum CaracteristicasFezesEnum {
  sangue("1", "Sangue", "Aparenta ter sangue nas fezes."),
  dor("2", "Dor", "Tive um nível considerável de dor."),
  restosAlimentares("3", "Restos Alimentares", "Percebi a presença de restos alimentares."),
  muco("4", "Muco", "Havia muco."),
  estufamento("5", "Estufamento", "Sensação de estufamento."),
  flatulencia("6", "Flatulência", "Tive muitas flatulências."),
  remedioConstipante("7", "Remédio Constipante", "Houve uso de remédio constipante."),
  colica("8", "Cólica", "Tive um nível considerável de cólica."),
  malCheiro("9", "Mal Cheiro", "Havia um odor muito pútrido."),
  laxante("10", "Laxantes", "Houve uso de laxantes.");

  final String id;
  final String nome;
  final String descricao;

  const CaracteristicasFezesEnum(this.id, this.nome, this.descricao);
}
