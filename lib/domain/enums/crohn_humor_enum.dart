import 'package:projeto_diarios_saude/domain/icons_app.dart';

enum CrohnHumorEnum {
  triste('1', IconsApp.fezesTipoUm, 'Triste.'),
  poucoTriste('2', IconsApp.fezesTipoUm, 'Pouco triste.'),
  neutro('3', IconsApp.fezesTipoUm, 'Neutro'),
  poucoFeliz('4', IconsApp.fezesTipoUm, 'Pouco feliz.'),
  feliz('5', IconsApp.fezesTipoUm, 'Feliz');

  final String id;
  final String asset;
  final String descricao;

  const CrohnHumorEnum(this.id, this.asset, this.descricao);
}
