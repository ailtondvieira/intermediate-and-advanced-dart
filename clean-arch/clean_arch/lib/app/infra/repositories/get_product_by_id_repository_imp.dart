import '../../domain/entities/product_entity.dart';
import '../../domain/repositories/get_product_by_id_repository.dart';
import '../datasources/get_product_by_id_datasource.dart';

class GetProductByIdRepositoryImp implements GetProductByIdRepository {
  final GetProductByIdDatasource _datasource;
  GetProductByIdRepositoryImp(this._datasource);

  @override
  ProductEntity? call(int id) {
    return _datasource.call(id);
  }
}
