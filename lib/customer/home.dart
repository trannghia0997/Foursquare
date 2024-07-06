import 'package:flutter/material.dart';
import 'package:Foursquare/shared/cardItem.dart';
import 'package:Foursquare/shared/sliderView.dart';
import 'package:Foursquare/services/product/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 350.0, // Độ cao của SliverAppBar khi mở rộng
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Mẫu vải của Foursquare',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black, // Màu chữ là màu đen
                  fontFamily: 'Roboto', // Font chữ
                  fontSize: 16.0, // Kích cỡ chữ
                  fontWeight: FontWeight.bold, // Độ đậm của chữ
                ),
              ),
              background:
                  SliderView(), // Widget SliderView làm nền của SliverAppBar
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              ProductList(products: products), // Widget ProductRow
            ]),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({required this.products, super.key});
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
