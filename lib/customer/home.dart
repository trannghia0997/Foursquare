import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/card_item.dart';
import 'package:foursquare/shared/sliderView.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              ProductList(), // Widget ProductRow
            ]),
          ),
        ],
      ),
    );
  }
}

class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  Widget _buildProductList(List<ProductInfoModel> products) {
    List<CardItem> cardList =
        products.map((p) => CardItem(productInfo: p)).toList();

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

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(productInfoProvider);
    return products.when(
      data: (data) => _buildProductList(data),
      error: (error, _) => Center(
        child: Text('Error: $error'),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
