import 'package:flutter/material.dart';
import 'package:foursquare/customer/detail_product.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/data/comment.dart';

class CardItem extends StatelessWidget {
  CardItem({required this.productInfo, super.key});

  final ProductInfoModel productInfo;

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
              builder: (context) =>
                  DetailProductScreen(productInfo: productInfo)));
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
          child: Column(
            children: [
              Hero(
                  tag: productInfo.images.first.imageUrl,
                  child: Container(
                      height: 60.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: NetworkImage(
                                  productInfo.images.first.imageUrl),
                              fit: BoxFit.contain)))),
              const SizedBox(height: 7.0),
              Text(
                  '${formatNumber(productInfo.product.expectedPrice ?? 0)} VNĐ',
                  style: TextStyle(
                      color: Colors.red[700],
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Text(productInfo.product.name,
                  style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontFamily: 'Varela',
                      fontSize: 14.0)),
              Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      Container(color: const Color(0xFFEBEBEB), height: 1.0)),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.star, color: Colors.yellow[700], size: 12.0),
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
            ],
          ),
        ),
      ),
    );
  }
}
