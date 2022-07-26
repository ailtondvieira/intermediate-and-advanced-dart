import '../entities/product_entity.dart';

// Esse será o contrato do repositório e a implementação dele ficará dentro dos repositories do infra.
abstract class GetAllProductsRepository {
  // Ele será praticamente igual ao do usercase, as vezes a diferença é que será um Future.
  // Porém não podemos usar o UseCase para usar na implementação do repositório
  // pois estaríamos ferindo o príncipio do SRP (Single Responsability Principle) do SOLID.
  List<ProductEntity> call();
}