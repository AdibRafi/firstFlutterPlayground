import 'package:flutter/material.dart';

import './products.dart';
import './product_control.dart';

class ProductManager extends StatefulWidget {
  final String startingProduct;
  final String startingImage;

  ProductManager(
      {this.startingProduct = 'Sweets Tester',
      this.startingImage = 'assets/food2.jpg'}) {
  }

  @override
  State<StatefulWidget> createState() {
    return _ProductManagerState();
  }
}

class _ProductManagerState extends State<ProductManager> {
  final List<String> _products = [];
  final List<String> _imageList = [];

  @override
  void initState() {
    _products.add(widget.startingProduct);
    _imageList.add(widget.startingImage);
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ProductManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProducts(String product) {
    setState(() {
      _products.add(product);
    });
  }

  void _addImage(String image) {
    setState(() {
      _imageList.add(image);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: EdgeInsets.all(10.0),
            child: ProductControl(_addProducts, _addImage)),
        Products(_products, _imageList)
      ],
    );
  }
}
