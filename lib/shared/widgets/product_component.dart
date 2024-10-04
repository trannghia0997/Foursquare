import "package:flutter/material.dart";
import "package:foursquare/riverpod/product.dart";
import "package:foursquare/shared/screen/detail_product.dart";

class ProductCategoryGrid extends StatelessWidget {
  const ProductCategoryGrid({required this.productQtyInfo, super.key});
  final List<ProductQuantityInfo> productQtyInfo;

  int _getCrossAxisCount(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    if (width < 600) {
      return 2; // Small screens
    } else if (width < 1200) {
      return 4; // Medium screens
    } else {
      return 6; // Large screens
    }
  }

  @override
  Widget build(BuildContext context) {
    List<ProductCategoryCard> productTiles = productQtyInfo
        .map((p) => ProductCategoryCard(productQtyInfo: p))
        .toList();

    return productTiles.isEmpty
        ? const SizedBox.shrink()
        : Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 8,
              ),
              GridView.count(
                crossAxisCount: _getCrossAxisCount(context),
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

class ProductCategoryCard extends StatelessWidget {
  const ProductCategoryCard({required this.productQtyInfo, super.key});

  final ProductQuantityInfo productQtyInfo;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(14),
      ),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => DetailProductScreen(
                product: productQtyInfo.categoryInfo,
                workingUnitId: productQtyInfo.quantity.workingUnitId,
              ),
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
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        spacing: 8,
                        children: [
                          Text(
                            productQtyInfo.categoryInfo.category.name ?? '',
                            style: Theme.of(context).textTheme.bodyLarge,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Container(
                            width: 16,
                            height: 16,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(int.parse(
                                  'FF${productQtyInfo.categoryInfo.colour.hexCode.replaceFirst('#', '')}',
                                  radix: 16)),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'Số lượng: ${productQtyInfo.quantity.qty ?? 0}',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context).colorScheme.secondary),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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

  final ProductCategoryInfo productCategoryInfo;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 64 / 36,
      child: Image.network(
        productCategoryInfo.images.first.imageUrl,
        loadingBuilder: (_, child, loadingProgress) => loadingProgress == null
            ? child
            : const Center(child: CircularProgressIndicator()),
        color: Colors.grey[200],
        colorBlendMode: BlendMode.multiply,
        fit: BoxFit.cover,
      ),
    );
  }
}
