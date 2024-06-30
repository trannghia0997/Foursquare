// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AppData {
  AppData._();

  static final List<String> innerStyleImages = [
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/clothing-store-banner-design-template-e7332aaf6402c88cb4623bf8eb6f97e2_screen.jpg?ts=1620867237',
    'https://cdn.venngage.com/template/thumbnail/small/01b644bd-e75b-4e70-b476-3a786261f066.webp',
    'https://elements-cover-images-0.imgix.net/f67401c2-06cb-4344-979b-f3234d681768?auto=compress%2Cformat&w=900&fit=max&s=75495e228f330d5446b90794cd1319ca',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/online-fashion-sale-banner-template-design-cc34c2027d0bb5ccc2ff90231abaa242_screen.jpg?ts=1613395464',
    'https://d1csarkz8obe9u.cloudfront.net/posterpreviews/fashion-store-facebook-ad-banner-design-template-754121190affdca4b258b77da2984528_screen.jpg?ts=1655421066',
    'https://elements-cover-images-0.imgix.net/4d1f9fd2-66a1-440c-9eaf-74bc09e949ce?auto=compress%2Cformat&w=900&fit=max&s=9cfa626fde5f76a7fdb6682aca7f9b68',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTVu6fS_l1hSojzUagIa-lwFCSSeVND1mdz-KmGh0swNZU7hIiFVJXXfzpv1YKUhlxcrc&usqp=CAU',
  ];
}

class SliderView extends StatefulWidget {
  const SliderView({super.key});

  @override
  State<SliderView> createState() => _SliderViewState();
}

class _SliderViewState extends State<SliderView>
    with SingleTickerProviderStateMixin {
  late CarouselController innerCarouselController;
  late CarouselController outerCarouselController;
  int innerCurrentPage = 0;
  int outerCurrentPage = 0;

  @override
  void initState() {
    innerCarouselController = CarouselController();
    outerCarouselController = CarouselController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size;
    double height, width;

    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            /// Inner Style Indicators Banner Slider
            _innerBannerSlider(height, width),

            /// Some Space
            const SizedBox(height: 50),

            /// Divider
            const Divider(),
          ],
        ),
      ),
    );
  }

  /// Inner Style Indicators Banner Slider
  Widget _innerBannerSlider(double height, double width) {
    return Column(
      children: [
        /// Slider Style
        const Padding(
          padding: EdgeInsets.all(15),
          child: Text(
            "Các khuyến mãi đang có",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),

        SizedBox(
          height: height * .25,
          width: width,
          child: Stack(
            alignment: Alignment.center,
            children: [
              /// Carouse lSlider
              Positioned.fill(
                child: CarouselSlider(
                  carouselController: innerCarouselController,

                  /// It's options
                  options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    enableInfiniteScroll: true,
                    viewportFraction: 0.8,
                    onPageChanged: (index, reason) {
                      setState(() {
                        innerCurrentPage = index;
                      });
                    },
                  ),

                  /// Items
                  items: AppData.innerStyleImages.map((imagePath) {
                    return Builder(
                      builder: (BuildContext context) {
                        /// Custom Image Viewer widget
                        return CustomImageViewer.show(
                          context: context,
                          url: imagePath,
                          fit: BoxFit.cover,
                        );
                      },
                    );
                  }).toList(),
                ),
              ),

              /// Indicators
              Positioned(
                bottom: height * .02,
                child: Row(
                  children: List.generate(
                    AppData.innerStyleImages.length,
                    (index) {
                      bool isSelected = innerCurrentPage == index;
                      return GestureDetector(
                        onTap: () {
                          innerCarouselController.animateToPage(index);
                        },
                        child: AnimatedContainer(
                          width: isSelected ? 55 : 17,
                          height: 10,
                          margin: EdgeInsets.symmetric(
                              horizontal: isSelected ? 6 : 3),
                          decoration: BoxDecoration(
                            color: isSelected
                                ? Colors.white
                                : Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(
                              40,
                            ),
                          ),
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.ease,
                        ),
                      );
                    },
                  ),
                ),
              ),

              /// Left Icon
              Positioned(
                left: 11,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: IconButton(
                    onPressed: () {
                      innerCarouselController
                          .animateToPage(innerCurrentPage - 1);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),

              /// Right Icon
              Positioned(
                right: 11,
                child: CircleAvatar(
                  backgroundColor: Colors.black.withOpacity(0.2),
                  child: IconButton(
                    onPressed: () {
                      innerCarouselController
                          .animateToPage(innerCurrentPage + 1);
                    },
                    icon: const Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class CustomImageViewer {
  CustomImageViewer._();

  static show(
      {required BuildContext context,
      required String url,
      BoxFit? fit,
      double? radius}) {
    return CachedNetworkImage(
        imageUrl: url,
        fit: fit ?? BoxFit.cover,
        imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                color: Theme.of(context).dialogBackgroundColor,
                borderRadius: BorderRadius.circular(
                  radius ?? 8,
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: fit ?? BoxFit.cover,
                ),
              ),
            ),
        placeholder: (context, url) => Container(),
        errorWidget: (context, url, error) => const Icon(Icons.error_outline));
  }
}
