import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/manager/add_product.dart";
import "package:foursquare/riverpod/product.dart";
import "package:foursquare/shared/card_item.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class ProductManagementPage extends StatelessWidget {
  const ProductManagementPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => const ProductManagementScreen(),
      ),
    );
  }
}

class ProductManagementScreen extends HookConsumerWidget {
  const ProductManagementScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final productInfo = ref.watch(allProductInfoProvider);
    final productSearchController = useTextEditingController();
    List<ProductInfo> products = [];
    switch (productInfo) {
      case AsyncLoading():
        return const Center(child: CircularProgressIndicator());
      case AsyncData(:final value):
        products = value;
        break;
      case AsyncError(:final error):
        return Center(
          child: Text(
            'Error: $error',
          ),
        );
      default:
        return const SizedBox();
    }
    final filteredProducts = useState(products);
    void filterProducts(String query) {
      filteredProducts.value = products
          .where(
            (item) => item.product.name.toLowerCase().contains(
                  query.toLowerCase(),
                ),
          )
          .toList();
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Quản lý mặt hàng"),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: productSearchController,
              onChanged: filterProducts,
              decoration: InputDecoration(
                labelText: 'Tìm kiếm mặt hàng',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Các mặt hàng ở kho",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          const SizedBox(height: 16.0),
          Expanded(
            child: filteredProducts.value.isNotEmpty
                ? GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    itemCount: filteredProducts.value.length,
                    itemBuilder: (context, index) {
                      return CardItem(
                        productInfo: filteredProducts.value[index],
                      );
                    },
                  )
                : Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.inbox,
                          size: 64.0,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16.0),
                        Text(
                          "Không tìm thấy mặt hàng",
                          style: TextStyle(
                            fontSize: 18.0,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AddProductScreen()),
          );
        },
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
