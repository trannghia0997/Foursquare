import 'package:flutter/material.dart';
import 'package:foursquare_client/data/product.dart';
import 'package:foursquare_client/shared/cardItem.dart';
import 'package:foursquare_client/shared/sliderView.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SliderView(),
          ProductRow(products: products),
        ],
      ),
    );
  }
}

class ProductRow extends StatelessWidget {
  const ProductRow({required this.products, super.key});
  final List<Product> products;

  @override
  Widget build(BuildContext context) {
    List<CardItem> cardList =
        products.map((p) => CardItem(product: p)).toList();

    return cardList.isEmpty
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              GridView.count(
                crossAxisCount: 2, // Set the number of columns here
                crossAxisSpacing: 24, // Adjust the spacing between columns
                mainAxisSpacing: 16, // Adjust the spacing between rows
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                children: cardList,
              ),
            ],
          );
  }
}

// void _pushScreen({required BuildContext context, required Widget screen}) {
//   ThemeData themeData = Theme.of(context);
//   Navigator.push(
//     context,
//     MaterialPageRoute(
//       builder: (_) => Theme(data: themeData, child: screen),
//     ),
//   );
// }
