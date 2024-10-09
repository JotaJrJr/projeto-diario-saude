import 'package:projeto_diarios_saude/data/dao/atividade_rotina_pele_dao.dart';
import 'package:projeto_diarios_saude/data/dao/caracteristica_dao.dart';
import 'package:projeto_diarios_saude/data/dao/diario_dao.dart';
import 'package:projeto_diarios_saude/data/dao/foto_dao.dart';
import 'package:projeto_diarios_saude/data/dao/notification_dao.dart';
import 'package:projeto_diarios_saude/data/dao/produto_rotina_pele_dao.dart';
import 'package:projeto_diarios_saude/data/dao/registro_fezes_dao.dart';
import 'package:projeto_diarios_saude/data/dao/rotina_pele_dao.dart';

class DaoList {
  static const List<Type> daos = [
    CaracteristicaDao,
    DiarioDao,
    FotoDao,
    RegistroFezesDao,
    RotinaPeleDao,
    ProdutoRotinaPeleDao,
    AtividadeRotinaPeleDao,
    NotificationDao,
  ];
}
