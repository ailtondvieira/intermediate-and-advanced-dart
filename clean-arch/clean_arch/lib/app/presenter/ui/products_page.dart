import 'package:clean_arch/app/presenter/ui/show_product_page.dart';
import 'package:flutter/material.dart';

import '../../../core/get_it.dart';
import '../controllers/product_controller.dart';

class ProductsPage extends StatelessWidget {
  ProductsPage({Key? key}) : super(key: key);

  ProductController controller = getIt.get<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Produtos'),
      ),
      body: ListView.builder(
        itemCount: controller.products.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              controller.getProductById(controller.products[index].id);
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => ShowProductPage(),
                ),
              );
            },
            child: Card(
              elevation: 8,
              margin: const EdgeInsets.all(10),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      controller.products[index].name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(controller.products[index].category),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
