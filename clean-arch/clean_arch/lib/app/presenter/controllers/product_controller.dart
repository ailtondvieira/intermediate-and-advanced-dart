import '../../domain/entities/product_entity.dart';
import '../../domain/usecases/get_all_products_usecase.dart';
import '../../domain/usecases/get_product_by_id_usecase.dart';

class ProductController {
  final GetAllProductsUsecase _getAllProductsUsecase;
  final GetProductByIdUsecase _getProductByIdUsecase;

  ProductController(
    this._getAllProductsUsecase,
    this._getProductByIdUsecase,
  ) {
    getAllProducts();
  }

  late ProductEntity product;
  void getProductById(int id) {
    product = _getProductByIdUsecase.call(id)!;
    print(product.name);
  }

  List<ProductEntity> products = [];
  void getAllProducts() {
    products = _getAllProductsUsecase.call();
  }
}
