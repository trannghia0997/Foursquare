import "package:foursquare/preparer/detail_product.dart";
import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:foursquare/riverpod/product.dart";
import "package:foursquare/riverpod/staff_info.dart";
import "package:foursquare/services/pb.dart";
import "package:foursquare/shared/models/product_image.dart";
import "package:hooks_riverpod/hooks_riverpod.dart";

class ProductComponent extends StatelessWidget {
  const ProductComponent({
    required this.products,
    super.key,
  });
  final List<ProductCategoryInfo> products;

  @override
  Widget build(BuildContext context) {
    List<ProductTile> productTiles =
        products.map((p) => ProductTile(product: p)).toList();

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

class ProductTile extends HookConsumerWidget {
  const ProductTile({required this.product, super.key});

  final ProductCategoryInfo product;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staffInfo = ref
        .watch(staffInfoByUserProvider(PBApp.instance.authStore.model.id))
        .requireValue;
    final productQty = ref.watch(ProductQuantityInfoByProductCategoryProvider(
      product.category.id,
    ));
    final productQtyValue = productQty
        .when(
          data: (data) => data,
          loading: () => <ProductQuantityInfo>[],
          error: (error, _) => <ProductQuantityInfo>[],
        )
        .where((item) =>
            staffInfo.staff.workingUnitId == item.quantity.workingUnitId);
    if (productQtyValue.isEmpty) {
      return const SizedBox.shrink();
    }
    return GestureDetector(
      onTap: () {
        SystemSound.play(SystemSoundType.click);
        _pushScreen(
          context: context,
          screen: DetailProductScreen(product: product),
        );
      },
      child: SizedBox(
        width: 150,
        child: Stack(
          children: [
            RowImage(
              productImage: product.images.first,
            ),
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
                      product.product.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    Text(
                      'Số lượng: ${productQtyValue.firstOrNull?.quantity.qty ?? 0}m',
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
    required this.productImage,
  });

  final ProductImageDto productImage;

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
          productImage.imageUrl,
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
