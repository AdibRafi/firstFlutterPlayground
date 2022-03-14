import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;
  final List<String> itemImages;

  Products([this.products = const [], this.itemImages = const []]) {
    print(itemImages);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: itemImages
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset(element),
                    Text(products[itemImages.indexOf(element)])
                  ],
                ),
              ))
          .toList(),
    );
  }
}
