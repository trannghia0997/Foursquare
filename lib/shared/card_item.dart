import 'package:flutter/material.dart';
import 'package:foursquare/shopper/detail_product.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/numeric.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({required this.productInfo, this.onTap, super.key});

  final ProductInfo productInfo;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      margin: const EdgeInsets.symmetric(vertical: 0),
      child: InkWell(
        splashColor: Colors.blue.withAlpha(30),
        onTap: onTap ??
            () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) =>
                      ProductDetailsPage(productInfo: productInfo)));
            },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: 64 / 36,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  image: DecorationImage(
                    image: NetworkImage(productInfo.images.first.imageUrl),
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.topCenter,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              productInfo.product.name,
              style: const TextStyle(
                color: Color(0xFF575E67),
                fontSize: 14.0,
              ),
            ),
            Text(
              '${formatNumber(productInfo.product.expectedPrice ?? 0)} ₫',
              style: TextStyle(
                color: Colors.red[700],
                fontSize: 14.0,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: productInfo.tags.take(1).map((tag) {
                return Container(
                  margin: const EdgeInsets.only(top: 4.0),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8.0, vertical: 4.0),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    tag.name,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      color: Color(0xFF575E67),
                      fontSize: 12.0,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
