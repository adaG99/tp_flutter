import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'View_Model/product_view_model.dart';
import 'View_UI/product_list_view.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ProductViewModel()..fetchProducts(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Fake Store', home: ProductListScreen());
  }
}
