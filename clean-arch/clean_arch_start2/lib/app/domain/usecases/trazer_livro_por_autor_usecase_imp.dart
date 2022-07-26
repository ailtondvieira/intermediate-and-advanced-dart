import '../entities/livro_entity.dart';
import '../repositories/trazer_livro_por_autor_repository.dart';
import 'trazer_livro_por_autor_usecase.dart';

class TrazerLivroPorAutorUsecaseImp implements TrazerLivroPorAutorUseCase {
  TrazerLivroPorAutorRepository _repository;
  TrazerLivroPorAutorUsecaseImp(this._repository);

  @override
  LivroEntity call(String autor) {
    return _repository.call(autor);
  }
}
