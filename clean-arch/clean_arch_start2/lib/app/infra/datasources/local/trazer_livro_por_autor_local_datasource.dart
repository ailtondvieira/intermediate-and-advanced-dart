import '../../../domain/entities/livro_entity.dart';
import '../trazer_livro_por_autor_datasource.dart';

class TrazerLivroPorAutorLocalDatasource implements TrazerLivroPorAutorDatasource {
  @override
  LivroEntity call(String autor) {
    if (autor == 'ailton') {
      return LivroEntity(
        nome: '50 tons de código',
        genero: 'ação',
        editora: 'maiamic',
        autor: 'ailton',
        qtdPaginas: 51,
      );
    }

    return LivroEntity(
      nome: 'Qualquer livro',
      genero: 'aventura',
      editora: 'desconhecido',
      autor: 'desconhecido',
      qtdPaginas: 80,
    );
  }
}
