import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';

abstract class CaracteristicaService {
  Future<List<CaracteristicaModel>> listarCaracteristicas();
  Future<CaracteristicaModel> queryById(String id);
  Future<CaracteristicaModel> queryByNome(String nome);
  Future<CaracteristicaModel> save(CaracteristicaModel model);
  Future<CaracteristicaModel> insertOrUpdate(CaracteristicaModel model);
  Future<CaracteristicaModel> queryByTipoDiario(int idTipoDiario);
  Future<void> removeById(int id);
  Future<void> removeAll();
}
