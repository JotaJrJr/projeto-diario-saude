import 'package:projeto_diarios_saude/data/table/atividade_rotina_pele_table.dart';
import 'package:projeto_diarios_saude/data/table/caracteristica_table.dart';
import 'package:projeto_diarios_saude/data/table/diario_table.dart';
import 'package:projeto_diarios_saude/data/table/foto_table.dart';
import 'package:projeto_diarios_saude/data/table/notification_table.dart';
import 'package:projeto_diarios_saude/data/table/produto_rotina_pele_table.dart';
import 'package:projeto_diarios_saude/data/table/registro_fezes_table.dart';
import 'package:projeto_diarios_saude/data/table/rotina_pele_table.dart';

class TableList {
  static const List<Type> tables = [
    DiarioTable,
    CaracteristicaTable,
    FotoTable,
    RegistroFezesTable,
    RotinaPeleTable,
    ProdutoRotinaPeleTable,
    AtividadeRotinaPeleTable,
    NotificationTable,
  ];
}
