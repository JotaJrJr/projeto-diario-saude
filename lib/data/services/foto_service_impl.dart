import 'package:projeto_diarios_saude/data/dao/foto_dao.dart';
import 'package:projeto_diarios_saude/data/model/foto_model.dart';
import 'package:projeto_diarios_saude/domain/services/foto_service.dart';

class FotoServiceImpl implements FotoService {
  final FotoDao _dao;

  FotoServiceImpl(this._dao);

  @override
  Future<List<FotoModel>> getAll() {
    return _dao.queryAll().then((value) => value.map((e) => FotoModel.fromData(e)).toList());
  }

  @override
  Future<FotoModel> insertOrUpdate(FotoModel model) {
    return _dao.insertOrUpdate(model.toData()).then((value) => FotoModel.fromData(value));
  }

  @override
  Future<FotoModel> queryByCaminho(String nome) {
    return _dao.queryByCaminho(nome).then((value) => FotoModel.fromData(value));
  }

  @override
  Future<FotoModel> queryById(String id) {
    return _dao.queryById(id).then((value) => FotoModel.fromData(value));
  }

  @override
  Future<List<FotoModel>> queryByTipoDiario(int idTipoDiario) {
    return _dao.queryByTipoDiario(idTipoDiario).then((value) => value.map((e) => FotoModel.fromData(e)).toList());
  }

  @override
  Future<void> removeAll() {
    return _dao.removeAll();
  }

  @override
  Future<void> remove(FotoModel model) {
    return _dao.remove(model.toData());
  }

  @override
  Future<FotoModel> save(FotoModel model) {
    return _dao.save(model.toData()).then((value) => FotoModel.fromData(value));
  }
}
