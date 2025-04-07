import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tp_flutter/View_UI/product_detail_view.dart';

import '../View_Model/product_view_model.dart';

class ProductListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Produits')),
      body: Consumer<ProductViewModel>(
        builder: (context, vm, child) {
          if (vm.loading) {
            return Center(child: CircularProgressIndicator());
          }

          return ListView.builder(
            itemCount: vm.products.length,
            itemBuilder: (context, index) {
              final product = vm.products[index];
              return ListTile(
                leading: Image.network(product.image, height: 50),
                title: Text(product.title),
                subtitle: Text('${product.price}€'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ProductDetailScreen(product: product),
                    ),
                  );
                },
              );
            },
          );
        },
      ),
    );
  }
}
