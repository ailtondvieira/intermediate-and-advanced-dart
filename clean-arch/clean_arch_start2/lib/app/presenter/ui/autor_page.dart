import 'package:flutter/material.dart';

import '../../domain/usecases/trazer_livro_por_autor_usecase_imp.dart';
import '../../infra/datasources/local/trazer_livro_por_autor_local_datasource.dart';
import '../../infra/repositories/trazer_livro_por_autor_repository_imp.dart';
import '../controllers/autor_controller.dart';

class AutorPage extends StatelessWidget {
  AutorPage({Key? key}) : super(key: key);

  AutorController controller = AutorController(
    TrazerLivroPorAutorUsecaseImp(
      TrazerLivroPorAutorRepositoryImp(
        TrazerLivroPorAutorLocalDatasource(),
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha tela'),
      ),
      body: Center(
        child: Text(controller.livro.nome),
      ),
    );
  }
}
