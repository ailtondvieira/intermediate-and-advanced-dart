import '../entities/product_entity.dart';
import '../repositories/get_all_products_repository.dart';

// Isso aqui é o contrato do nosso caso de uso para trazer todos os produtos.
abstract class GetAllProductsUsecase {
  // Será retornado a lista de produtos.
  List<ProductEntity> call();
  // o call também é chamado de funções callable, basicamente ela é chamada quando instanciamos a classe.
}

// Contém as regras de negócio da aplicação
// Essa é a implementação do caso de uso do GetAllProducts
class GetAllProductsUsecaseImp implements GetAllProductsUsecase {
  // Aqui PRECISAREMOS de um CONTRATO do repositório para fazer a chamada do método.
  // e dependermos de ABSTRAÇÃO e NÃO DE IMPLEMENTAÇÃO, por isso o CONTRATO.
  final GetAllProductsRepository _repository;
  GetAllProductsUsecaseImp(this._repository);

  @override
  List<ProductEntity> call() {
    return _repository.call();
  }
}
