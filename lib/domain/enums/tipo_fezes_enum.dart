import 'package:projeto_diarios_saude/domain/icons_app.dart';

enum TipoFezesEnum {
  tipo1('Bristol 1', IconsApp.fezesTipoUm, 'Fezes separadas em pedaços duros e pequenos, parecendo nozes, difíceis de evacuar (constipação severa).'),
  tipo2('Bristol 2', IconsApp.fezesTipoUm, 'Fezes em formato de salsicha, mas com aparência irregular e cheia de "nódulos" (constipação leve).'),
  tipo3('Bristol 3', IconsApp.fezesTipoUm, 'Fezes em formato de salsicha, com pequenas rachaduras na superfície (normal).'),
  tipo4('Bristol 4', IconsApp.fezesTipoUm, 'Fezes em formato de salsicha ou serpente, suaves e lisas (normal).'),
  tipo5('Bristol 5', IconsApp.fezesTipoUm, 'Fezes em pedaços macios com bordas claras, facilmente excretáveis (tendência à diarreia).'),
  tipo6('Bristol 6', IconsApp.fezesTipoUm, 'Fezes em pedaços moles, meio "moles", pastosas, com bordas irregulares (diarreia leve).'),
  tipo7('Bristol 7', IconsApp.fezesTipoUm, 'Fezes líquidas sem pedaços sólidos, completamente líquidas (diarreia severa).');

  final String tipo;
  final String asset;
  final String descricao;

  const TipoFezesEnum(this.tipo, this.asset, this.descricao);
}
