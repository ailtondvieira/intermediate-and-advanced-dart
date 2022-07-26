import '../entities/livro_entity.dart';

// Contrato do user case para trazer livro por autor
abstract class TrazerLivroPorAutorUseCase {
  LivroEntity call(String autor);  
}