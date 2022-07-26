// Contém as regras de negócio corporativas
// é uma entidade
class ProductEntity {
  int id;
  String name;
  String brand;
  String category;
  double price;
  int qtd;

  ProductEntity({
    required this.id,
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.qtd,
  });

  bool verifyAvailability() {
    if (qtd > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyPriceValid() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }
}
