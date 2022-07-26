import '../../domain/entities/livro_entity.dart';
import '../../domain/usecases/trazer_livro_por_autor_usecase.dart';

class AutorController {
  final TrazerLivroPorAutorUseCase _trazerLivroPorAutorUseCase;
  AutorController(this._trazerLivroPorAutorUseCase) {
    trazerLivroPorAutor();
  }

  late LivroEntity livro;
  void trazerLivroPorAutor() {
    livro = _trazerLivroPorAutorUseCase.call('aadadawdilton');
  }

}
