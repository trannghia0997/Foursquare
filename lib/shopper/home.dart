import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/card_item.dart';
import 'package:foursquare/shared/sliderView.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          ref.invalidate(allProductInfoProvider);
        },
        child: CustomScrollView(
          slivers: <Widget>[
            const SliverAppBar(
              expandedHeight: 350.0,
              flexibleSpace: FlexibleSpaceBar(
                background:
                    SliderView(), // Widget SliderView làm nền của SliverAppBar
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  'Mẫu vải của Foursquare',
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const ProductList(), // Widget ProductRow
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductList extends HookConsumerWidget {
  const ProductList({super.key});

  Widget _buildProductList(List<ProductInfo> products) {
    List<ProductCard> cardList =
        products.map((p) => ProductCard(productInfo: p)).toList();

    return cardList.isEmpty
        ? const SizedBox.shrink()
        : LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount;
              if (constraints.maxWidth >= 1200) {
                crossAxisCount = 6; // Large screen
              } else if (constraints.maxWidth >= 800) {
                crossAxisCount = 4; // Medium screen
              } else {
                crossAxisCount = 2; // Small screen
              }

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 8,
                  ),
                  GridView.count(
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: cardList,
                  ),
                ],
              );
            },
          );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final products = ref.watch(allProductInfoProvider);
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
