import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'favorites.dart';

class FavoritesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Favorites')),
      body: Consumer<Favorites>(
        builder: (context, favorites, child) {
          return favorites.items.isEmpty
              ? Center(child: Text('No favorites yet!'))
              : ListView.builder(
                  itemCount: favorites.items.length,
                  itemBuilder: (context, index) {
                    final item = favorites.items[index];
                    return Card(
                      child: ListTile(
                        title: Text(item),
                        trailing: IconButton(
                          icon: Icon(Icons.delete),
                          onPressed: () {
                            favorites.removeItem(item);
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('$item removed from favorites!')),
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
        },
      ),
    );
  }
}
