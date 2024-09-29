import '../../data/model/registro_fezes_model.dart';

abstract class RegistroFezesService {
  Future<List<RegistroFezesModel>> queryAll();
  Future<RegistroFezesModel> queryById(String id);
  Future<List<RegistroFezesModel>> queryByPeriodo(int inicio, int fim);
  Future<RegistroFezesModel> save(RegistroFezesModel model);
  Future<RegistroFezesModel> insertOrUpdate(RegistroFezesModel model);
  Future<void> remove(RegistroFezesModel model);
  Future<void> removeAll();
}
