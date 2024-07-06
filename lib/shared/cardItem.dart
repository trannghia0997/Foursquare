// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:Foursquare/customer/detail_product.dart';
import 'package:Foursquare/data/product.dart';
import 'package:Foursquare/shared/numeric.dart';
import 'package:Foursquare/data/comment.dart';

class CardItem extends StatelessWidget {
  CardItem({required this.product, super.key});

  final Product product;

  get isFavorite => false;

  final double rating = double.parse((comments.fold(
              0, (previousValue, comment) => previousValue + comment.rating) /
          comments.length)
      .toStringAsFixed(1));
  final String hastag = 'Mua nhiều';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
                        Row(
                          children: [
                            Icon(Icons.star,
                                color: Colors.yellow[700], size: 12.0),
                            Text(
                              '$rating', // Hiển thị rating
                              style: TextStyle(
                                fontFamily: 'Varela',
                                color: Colors.red[700],
                                fontSize: 12.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                            width: 8.0), // Khoảng cách giữa rating và hashtag
                        Icon(Icons.shopping_basket,
                            color: Colors.red[700], size: 12.0),
                        Text(
                          hastag,
                          style: TextStyle(
                            fontFamily: 'Varela',
                            color: Colors.red[700],
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ]))));
  }
}
