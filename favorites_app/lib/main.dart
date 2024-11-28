import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';
import 'product_list_screen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Favorites(), // Provide the Favorites model
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorites App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductListScreen(), // Set the initial screen
    );
  }
}
