import '../../data/model/foto_model.dart';

abstract class FotoService {
  Future<List<FotoModel>> getAll();
  Future<FotoModel> queryById(int id);
  Future<FotoModel> queryByCaminho(String nome);
  Future<FotoModel> save(FotoModel model);
  Future<FotoModel> update(FotoModel model);
  Future<FotoModel> queryByTipoDiario(int idTipoDiario);
  Future<void> deleteById(int id);
  Future<void> deleteAll();
}
