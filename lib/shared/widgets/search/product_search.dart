import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:foursquare/riverpod/product.dart';
import 'package:foursquare/shared/numeric.dart';
import 'package:foursquare/shopper/detail_product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ProductSearchPage extends HookConsumerWidget {
  const ProductSearchPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    final searchResults = useState<List<ProductInfo>>([]);

    Future<void> performSearch(String query) async {
      if (query.isEmpty) {
        searchResults.value = [];
        return;
      }
      final results = (await ref.read(allProductInfoProvider.future))
          .where((element) =>
              element.product.name
                  .toLowerCase()
                  .contains(query.toLowerCase()) ||
              element.tags.any((tag) =>
                  tag.name.toLowerCase().contains(query.toLowerCase())))
          .toList();
      searchResults.value = results;
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Tìm kiếm sản phẩm'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: searchController,
              decoration: const InputDecoration(
                labelText: 'Tìm kiếm',
                border: OutlineInputBorder(),
              ),
              onChanged: (query) {
                performSearch(query);
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: searchResults.value.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Image.network(
                    searchResults.value[index].images.first.imageUrl,
                    width: 50,
                    height: 50,
                    fit: BoxFit.cover,
                  ),
                  title: Text(searchResults.value[index].product.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          'Giá: ${formatNumber(searchResults.value[index].product.expectedPrice?.toInt() ?? 0)} đ'),
                      Wrap(
                        spacing: 4.0,
                        runSpacing: 4.0,
                        children: searchResults.value[index].tags
                            .map((tag) => Chip(
                                  label: Text(tag.name),
                                  materialTapTargetSize:
                                      MaterialTapTargetSize.shrinkWrap,
                                  labelPadding: EdgeInsets.zero,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailsPage(
                          productInfo: searchResults.value[index],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
