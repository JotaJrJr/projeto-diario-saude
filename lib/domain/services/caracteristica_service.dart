import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';

abstract class CaracteristicaService {
  Future<List<CaracteristicaModel>> queryAll();
  Future<CaracteristicaModel> queryById(String id);
  Future<CaracteristicaModel> queryByNome(String nome);
  Future save(CaracteristicaModel model);
  Future<CaracteristicaModel> insertOrUpdate(CaracteristicaModel model);
  Future<List<CaracteristicaModel>> queryByTipoDiario(String idTipoDiario);
  Future<void> removeById(String id);
  Future<void> removeAll();
}
