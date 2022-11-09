import 'package:flutter/material.dart';
import 'package:store_flutter/model/products_model.dart';

import 'items.dart';

// List items
class ListItems extends StatelessWidget {
  List<ProductsModel> products;

  ListItems({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 330,
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'New Items',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];
                  final left = index == 0 ? 14.0 : 0.0;

                  return Container(
                    margin: EdgeInsets.only(left: left),
                    child: Item(
                      title: product.title,
                      price: product.price.toString(),
                      image: product.images[0],
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
