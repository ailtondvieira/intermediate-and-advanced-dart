import '../entities/product_entity.dart';
import '../repositories/get_product_by_id_repository.dart';

// CONTRATO
abstract class GetProductByIdUsecase {
  ProductEntity? call(int id);
}

// IMPLEMENTAÇÃO
class GetProductByIdUsecaseImp implements GetProductByIdUsecase {
  final GetProductByIdRepository _repository;
  GetProductByIdUsecaseImp(this._repository);

  @override
  ProductEntity? call(int id) {
    return _repository.call(id);
  }
}
