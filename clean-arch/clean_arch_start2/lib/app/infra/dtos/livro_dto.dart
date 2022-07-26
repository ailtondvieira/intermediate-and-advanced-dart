import 'dart:convert';

import '../../domain/entities/livro_entity.dart';

class LivroDto extends LivroEntity {
  final String nomeDoLivro;
  final String genero;
  final String editora;
  final String autor;
  final int quantidadeDePaginas;

  LivroDto({
    required this.nomeDoLivro,
    required this.genero,
    required this.editora,
    required this.autor,
    required this.quantidadeDePaginas,
  }) : super(
          nome: nomeDoLivro,
          autor: autor,
          editora: editora,
          genero: genero,
          qtdPaginas: quantidadeDePaginas,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'nomeDoLivro': nomeDoLivro});
    result.addAll({'genero': genero});
    result.addAll({'editora': editora});
    result.addAll({'autor': autor});
    result.addAll({'quantidadeDePaginas': quantidadeDePaginas});

    return result;
  }

  factory LivroDto.fromMap(Map<String, dynamic> map) {
    return LivroDto(
      nomeDoLivro: map['nomeDoLivro'] ?? '',
      genero: map['genero'] ?? '',
      editora: map['editora'] ?? '',
      autor: map['autor'] ?? '',
      quantidadeDePaginas: map['quantidadeDePaginas']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory LivroDto.fromJson(String source) =>
      LivroDto.fromMap(json.decode(source));
}
