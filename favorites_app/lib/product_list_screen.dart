import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';
import 'favorites_screen.dart';

class ProductListScreen extends StatelessWidget {
  final List<String> products = ['Apple', 'Banana', 'Orange', 'Grapes'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Product List')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            child: ListTile(
              title: Text(product),
              trailing: IconButton(
                icon: Icon(Icons.favorite_border),
                onPressed: () {
                  Provider.of<Favorites>(context, listen: false).addItem(product);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('$product added to favorites!')),
                  );
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.favorite),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FavoritesScreen()),
          );
        },
      ),
    );
  }
}
