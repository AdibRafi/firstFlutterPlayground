import 'package:flutter/material.dart';

class ProductControl extends StatelessWidget {
  final Function addProduct;
  final Function addImage;

  ProductControl(this.addProduct,this.addImage);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        addProduct('Sweets');
        addImage('assets/food2.jpg');
      },
      child: Text('Add product'),
    );
  }
}
