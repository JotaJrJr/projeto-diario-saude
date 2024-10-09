import 'package:projeto_diarios_saude/data/dao/caracteristica_dao.dart';
import 'package:projeto_diarios_saude/data/model/caracteristica_model.dart';
import 'package:projeto_diarios_saude/domain/services/caracteristica_service.dart';

class CaracteristicaServiceImpl implements CaracteristicaService {
  final CaracteristicaDao _dao;

  CaracteristicaServiceImpl(this._dao);

  @override
  Future<CaracteristicaModel> insertOrUpdate(CaracteristicaModel model) {
    return _dao.insertOrUpdate(model.toData()).then((value) => model);
  }

  @override
  Future<List<CaracteristicaModel>> queryAll() {
    return _dao.queryAll().then((value) => value.map((e) => CaracteristicaModel.fromData(e)).toList());
  }

  @override
  Future<CaracteristicaModel> queryById(String id) {
    return _dao.queryById(id).then((value) => CaracteristicaModel.fromData(value));
  }

  @override
  Future<CaracteristicaModel> queryByNome(String nome) {
    return _dao.queryByNome(nome).then((value) => CaracteristicaModel.fromData(value));
  }

  @override
  Future<List<CaracteristicaModel>> queryByTipoDiario(String idTipoDiario) {
    return _dao.queryByTipoDiario(idTipoDiario).then((value) => value.map((e) => CaracteristicaModel.fromData(e)).toList());
  }

  @override
  Future<void> removeAll() {
    return _dao.removeAll();
  }

  @override
  Future<void> removeById(String id) {
    return _dao.removeById(id);
  }

  @override
  Future<CaracteristicaModel> save(CaracteristicaModel model) {
    return _dao.save(model.toData()).then((value) => model);
  }
}
