import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:foursquare/manager/edit_product.dart";
import "package:foursquare/riverpod/product.dart";

class ProductRow extends StatelessWidget {
  const ProductRow({required this.productQtyInfo, super.key});
  final List<ProductQuantityInfoModel> productQtyInfo;

  @override
  Widget build(BuildContext context) {
    List<ProductTile> productTiles =
        productQtyInfo.map((p) => ProductTile(productQtyInfo: p)).toList();

    return productTiles.isEmpty
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
                children: productTiles,
              ),
            ],
          );
  }
}

class ProductTile extends StatelessWidget {
  const ProductTile({required this.productQtyInfo, super.key});

  final ProductQuantityInfoModel productQtyInfo;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        SystemSound.play(SystemSoundType.click);
        _pushScreen(
          context: context,
          screen: EditProductScreen(
            product: productQtyInfo.categoryInfo.product,
          ),
        );
      },
      child: SizedBox(
        width: 150,
        child: Stack(
          children: [
            RowImage(productCategoryInfo: productQtyInfo.categoryInfo),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      productQtyInfo.categoryInfo.product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Số lượng: ${productQtyInfo.quantity.qty ?? 0}m',
                      style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          color: Theme.of(context).colorScheme.secondary),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RowImage extends StatelessWidget {
  const RowImage({
    super.key,
    required this.productCategoryInfo,
  });

  final ProductCategoryInfoModel productCategoryInfo;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: .95,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Colors.grey[200],
        ),
        clipBehavior: Clip.hardEdge,
        child: Image.network(
          productCategoryInfo.images.first.imageUrl,
          loadingBuilder: (_, child, loadingProgress) => loadingProgress == null
              ? child
              : const Center(child: CircularProgressIndicator()),
          color: Colors.grey[200],
          colorBlendMode: BlendMode.multiply,
        ),
      ),
    );
  }
}

void _pushScreen({required BuildContext context, required Widget screen}) {
  ThemeData themeData = Theme.of(context);
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (_) => Theme(data: themeData, child: screen),
    ),
  );
}
