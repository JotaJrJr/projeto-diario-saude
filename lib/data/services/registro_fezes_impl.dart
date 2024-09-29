import 'package:projeto_diarios_saude/data/dao/registro_fezes_dao.dart';
import 'package:projeto_diarios_saude/data/model/registro_fezes_model.dart';
import 'package:projeto_diarios_saude/domain/services/registro_fezes_service.dart';

class RegistroFezesImpl implements RegistroFezesService {
  final RegistroFezesDao _dao;

  RegistroFezesImpl(this._dao);

  @override
  Future<RegistroFezesModel> insertOrUpdate(RegistroFezesModel model) {
    return _dao.insertOrUpdate(model.toData()).then((value) => RegistroFezesModel.fromData(value));
  }

  @override
  Future<List<RegistroFezesModel>> queryAll() {
    return _dao.queryAll().then((value) => value.map((e) => RegistroFezesModel.fromData(e)).toList());
  }

  @override
  Future<RegistroFezesModel> queryById(String id) {
    return _dao.queryById(id).then((value) => RegistroFezesModel.fromData(value));
  }

  @override
  Future<List<RegistroFezesModel>> queryByPeriodo(int inicio, int fim) {
    return _dao.queryByPeriodo(inicio, fim).then((value) => value.map((e) => RegistroFezesModel.fromData(e)).toList());
  }

  @override
  Future<void> remove(RegistroFezesModel model) {
    return _dao.remove(model.toData());
  }

  @override
  Future<void> removeAll() {
    return _dao.removeAll();
  }

  @override
  Future<RegistroFezesModel> save(RegistroFezesModel model) {
    return _dao.save(model.toData()).then((value) => RegistroFezesModel.fromData(value));
  }
}
