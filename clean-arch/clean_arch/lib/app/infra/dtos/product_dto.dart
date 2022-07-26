import 'dart:convert';

import '../../domain/entities/product_entity.dart';

// Nosso DTO é o DATA TRANSFORM OBJECT
// É ele que transformará nossos dados json em objeto dart.
// Ele será um reflexo do nosso Entity, porém poderemos ter os atributos com nomes diferentes,
// já que esses nomes aqui no DTO precisarão ser um reflexo dos campos na API
class ProductDto extends ProductEntity {
  int id;
  String nameProduct;
  String brand;
  String category;
  double price;
  int quantity;

  // Como nós temos que extender de ProductEntity, temos que passar os valores dessa classe
  // para o product entity, fazemos isso através do : super.
  ProductDto({
    required this.id,
    required this.nameProduct,
    required this.brand,
    required this.category,
    required this.price,
    required this.quantity,
  }) : super(
          name: nameProduct,
          brand: brand,
          category: category,
          qtd: quantity,
          price: price,
          id: id,
        );

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};
    
    result.addAll({'id': id});
    result.addAll({'nameProduct': nameProduct});
    result.addAll({'brand': brand});
    result.addAll({'category': category});
    result.addAll({'price': price});
    result.addAll({'quantity': quantity});

    return result;
  }

  factory ProductDto.fromMap(Map<String, dynamic> map) {
    return ProductDto(
      id: map['id']?.toInt() ?? 0,
      nameProduct: map['nameProduct'] ?? '',
      brand: map['brand'] ?? '',
      category: map['category'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      quantity: map['quantity']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProductDto.fromJson(String source) =>
      ProductDto.fromMap(json.decode(source));
}

// Aqui no DTO poderá validações de dados, conversão, tratamentos.
// Porém tratamentos de erros com o Try Catch ficará nos datasources.
