import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  ProductItem(this.id, this.title, this.imageUrl);

  @override
  Widget build(BuildContext context) {
    //gridTile works good inside of grids
    return GridTile(
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
      ),
      footer: GridTileBar(
        backgroundColor: Colors.black54,
        //adaugi chestii in fata (stanga) titlului:
        leading: IconButton(icon: Icon(Icons.favorite_border)),
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        //adaugi chestii dupa (in dreapta) titlului:
        trailing: IconButton(
          icon: Icon(Icons.shopping_cart),
          onPressed: () {},
        ),
      ),
    );
  }
}
