import 'package:projeto_diarios_saude/data/model/diario_model.dart';

abstract class DiarioService {
  Future<List<DiarioModel>> queryAll();
  Future<DiarioModel> queryById(String id);
  Future<DiarioModel> save(DiarioModel model);
  Future<DiarioModel> insertOrUpdate(DiarioModel model);
  Future<void> remove(DiarioModel model);
  Future<void> removeAll();
}
