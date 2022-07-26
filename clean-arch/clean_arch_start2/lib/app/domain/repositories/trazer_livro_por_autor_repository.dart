import '../entities/livro_entity.dart';

abstract class TrazerLivroPorAutorRepository {
  LivroEntity call(String autor);
}