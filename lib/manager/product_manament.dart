import "package:flutter/material.dart";
import "package:foursquare/manager/addProduct.dart";
import "package:foursquare/shared/card_item.dart";

class ProductManamentPage extends StatelessWidget {
  const ProductManamentPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData.light(),
      child: Builder(
        builder: (context) => ProductManamentScreen(products: products),
      ),
    );
  }
}

class ProductManamentScreen extends StatefulWidget {
  const ProductManamentScreen({required this.products, super.key});
  final List<Product> products;

  @override
  State<ProductManamentScreen> createState() => _ProductManamentScreenState();
}

class _ProductManamentScreenState extends State<ProductManamentScreen> {
  final TextEditingController _staffSearchController = TextEditingController();
  final TextEditingController _productSearchController =
      TextEditingController();
  List<Product> _filteredProducts = [];

  @override
  void initState() {
    _filteredProducts = widget.products;
    super.initState();
  }

  @override
  void dispose() {
    _staffSearchController.dispose();
    _productSearchController.dispose();
    super.dispose();
  }

  void _filterProducts(String query) {
    setState(() {
      _filteredProducts = widget.products
          .where((product) =>
              product.name.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
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
              controller: _productSearchController,
              onChanged: _filterProducts,
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
            child: _filteredProducts.isNotEmpty
                ? GridView.builder(
                    padding: const EdgeInsets.all(16.0),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 16.0,
                      mainAxisSpacing: 16.0,
                    ),
                    itemCount: _filteredProducts.length,
                    itemBuilder: (context, index) {
                      return CardItem(product: _filteredProducts[index]);
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
