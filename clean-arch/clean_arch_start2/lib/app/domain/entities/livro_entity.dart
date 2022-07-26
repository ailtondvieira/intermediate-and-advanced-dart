class LivroEntity {
  String nome;
  String genero;
  String editora;
  String autor;
  int qtdPaginas;

  LivroEntity({
    required this.nome,
    required this.genero,
    required this.editora,
    required this.autor,
    required this.qtdPaginas,
  });

  verificarQuantidadePaginas() {
    if (qtdPaginas < 50) {
      return throw 'Erro, tem que ter mais do que 50 páginas';
    }
  }
}