// ignore_for_file: file_names

import "package:flutter/material.dart";
import "package:foursquare_client/profile/userData/user.dart";

class StaffRow extends StatelessWidget {
  const StaffRow({required this.staff, Key? key}) : super(key: key);
  final List<User> staff;

  @override
  Widget build(BuildContext context) {
    List<StaffTile> productTiles =
        staff.map((s) => StaffTile(staff: s)).toList();

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

class StaffTile extends StatelessWidget {
  const StaffTile({required this.staff, Key? key}) : super(key: key);

  final User staff;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: () {
      //   SystemSound.play(SystemSoundType.click);
      //   _pushScreen(
      //     context: context,
      //     screen: ProductScreen(product: product),
      //   );
      // },
      child: SizedBox(
        width: 150,
        child: Stack(
          children: [
            StaffImage(staff: staff),
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
                      staff.name,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.titleSmall,
                    ),
                    // Text(
                    //   'Số lượng: ${product.qty.toString()}m',
                    //   style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    //       color: Theme.of(context).colorScheme.secondary),
                    // ),
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

class StaffImage extends StatelessWidget {
  const StaffImage({
    Key? key,
    required this.staff,
  }) : super(key: key);

  final User staff;

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
          staff.image,
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
