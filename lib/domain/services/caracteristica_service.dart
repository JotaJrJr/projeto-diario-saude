import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';

abstract class CaracteristicaService {
  Future<List<CaracteristicaModel>> listarCaracteristicas();
  Future<CaracteristicaModel> queryById(int id);
  Future<CaracteristicaModel> queryByNome(String nome);
  Future<CaracteristicaModel> save(CaracteristicaModel model);
  Future<CaracteristicaModel> update(CaracteristicaModel model);
  Future<CaracteristicaModel> queryByTipoDiario(int idTipoDiario);
  Future<void> deleteById(int id);
  Future<void> deleteAll();
}
