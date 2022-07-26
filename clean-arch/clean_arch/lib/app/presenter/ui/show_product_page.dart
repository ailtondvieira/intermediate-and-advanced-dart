import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ShowProductPage extends StatelessWidget {
  ShowProductPage({Key? key}) : super(key: key);

  final controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Produto'),
      ),
      body: Center(
        child: Text(controller.product.name),
      ),
    );
  }
}
