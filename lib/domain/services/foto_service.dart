import '../../data/model/foto_model.dart';

abstract class FotoService {
  Future<List<FotoModel>> getAll();
  Future<FotoModel> queryById(String id);
  Future<FotoModel> queryByCaminho(String nome);
  Future<FotoModel> save(FotoModel model);
  Future<FotoModel> insertOrUpdate(FotoModel model);
  Future<List<FotoModel>> queryByTipoDiario(int idTipoDiario);
  Future<void> remove(FotoModel model);
  Future<void> removeAll();
}
