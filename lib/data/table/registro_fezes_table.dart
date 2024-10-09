import 'package:drift/drift.dart';

class RegistroFezesTable extends Table {
  TextColumn get idDiario => text().named('ID_DIARIO')();
  // TextColumn get idUsuario => text().nullable().named('ID_PACIENTE')();
  // IntColumn get data => integer().nullable().named('DATA')();
  IntColumn get duracao => integer().nullable().named('DURACAO')();
  IntColumn get quantidade => integer().nullable().named('QUANTIDADE')();
  IntColumn get nivelHumor => integer().nullable().named('NIVEL_HUMOR')();
  IntColumn get nivelBristrol => integer().nullable().named('NIVEL_BRISTROL')();
  IntColumn get cor => integer().nullable().named('COR')();
  TextColumn get observacoes => text().nullable().named('OBSERVACOES')();
  TextColumn get caracteristicas => text().nullable().named('CARACTERISTICAS')();

  @override
  Set<Column> get primaryKey => {idDiario};
}

/// Tabela fotos
/// contendo ID desta tabela
/// 
/// Tabela CaracteristicaFezes
/// contendo ID desta tabela
/// 
/// Tabela Endereço
/// contendo ID desta tabela