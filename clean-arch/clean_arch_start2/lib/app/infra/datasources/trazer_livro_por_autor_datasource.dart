
import '../../domain/entities/livro_entity.dart';

abstract class TrazerLivroPorAutorDatasource {
  LivroEntity call(String autor);
}