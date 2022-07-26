import '../../domain/entities/livro_entity.dart';
import '../../domain/repositories/trazer_livro_por_autor_repository.dart';
import '../datasources/trazer_livro_por_autor_datasource.dart';

class TrazerLivroPorAutorRepositoryImp implements TrazerLivroPorAutorRepository {
  final TrazerLivroPorAutorDatasource _datasource;
  TrazerLivroPorAutorRepositoryImp(this._datasource);

  @override
  LivroEntity call(String autor) {
    return _datasource.call(autor);
  }
}
