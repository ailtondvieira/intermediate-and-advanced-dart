import '../../../domain/entities/product_entity.dart';
import '../get_product_by_id_datasource.dart';

class GetProductByIdLocalDatasourceImp implements GetProductByIdDatasource {
  @override
  ProductEntity? call(int id) {
    List<ProductEntity> products = [
      ProductEntity(
        id: 1,
        name: 'Computador',
        brand: 'hp',
        category: 'eletrônicos',
        price: 5000,
        qtd: 3,
      ),
      ProductEntity(
        id: 2,
        name: 'Bicicleta',
        brand: 'mona',
        category: 'automóveis',
        price: 300,
        qtd: 2,
      ),
      ProductEntity(
        id: 3,
        name: 'Fone de ouvido gamer',
        brand: 'HyperX',
        category: 'eletrônicos',
        price: 162,
        qtd: 0,
      )
    ];

    for (ProductEntity product in products) {
      if (product.id == id) {
        return product;
      }
    }

    return null;
  }
}
