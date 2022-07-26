import '../../domain/entities/product_entity.dart';

abstract class GetProductByIdDatasource {
  ProductEntity? call(int id);
}
