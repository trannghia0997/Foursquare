// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:foursquare_client/client/detailProduct.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/shared/numeric.dart';

class CardItem extends StatelessWidget {
  const CardItem({required this.product, super.key});

  final Product product;

  get isFavorite => false;

  bool get added => false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        // padding:
        //     const EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailProductScreen(product: product)));
            },
            child: Container(
                height: 1000,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Column(children: [
                  Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            isFavorite
                                ? Icon(Icons.favorite, color: Colors.red[700])
                                : Icon(Icons.favorite_border,
                                    color: Colors.red[700])
                          ])),
                  Hero(
                      tag: product.imageUrls.first,
                      child: Container(
                          height: 60.0,
                          width: 120.0,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(product.imageUrls.first),
                                  fit: BoxFit.contain)))),
                  const SizedBox(height: 7.0),
                  Text('${formatNumber(product.cost.toInt())} VNĐ',
                      style: TextStyle(
                          color: Colors.red[700],
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Text(product.name,
                      style: const TextStyle(
                          color: Color(0xFF575E67),
                          fontFamily: 'Varela',
                          fontSize: 14.0)),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          color: const Color(0xFFEBEBEB), height: 1.0)),
                  Padding(
                      padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (!added) ...[
                              Icon(Icons.shopping_basket,
                                  color: Colors.red[700], size: 12.0),
                              Text('Add to cart',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Colors.red[700],
                                      fontSize: 12.0))
                            ],
                            if (added) ...[
                              Icon(Icons.remove_circle_outline,
                                  color: Colors.red[700], size: 12.0),
                              Text('3',
                                  style: TextStyle(
                                      fontFamily: 'Varela',
                                      color: Colors.red[700],
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12.0)),
                              const Icon(Icons.add_circle_outline,
                                  color: Color(0xFFD17E50), size: 12.0),
                            ]
                          ]))
                ]))));
  }
}
