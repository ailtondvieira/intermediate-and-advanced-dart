
import '../entities/product_entity.dart';

abstract class GetProductByIdRepository {
  ProductEntity? call(int id);
}