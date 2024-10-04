import "package:flutter/material.dart";
import "package:flutter_hooks/flutter_hooks.dart";
import "package:foursquare/auth/sign_in.dart";

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPagePresenter(pages: [
        OnboardingPageModel(
          title: 'Welcome to Foursquare',
          description: 'Foursquare ứng dụng bán vải số 1 Việt Nam',
          image: Image(
            image: const AssetImage("assets/icon/icon.png"),
            width: MediaQuery.of(context).size.width * 0.5,
          ),
          bgColor: const Color(0xFF1483C2),
        ),
        OnboardingPageModel(
          title: 'Chuyên cung cấp giá sĩ',
          description:
              'Foursquare chuyên cũng cấp vải với giá sĩ khi bán lẻ. Đảm bảo giá rẻ, uy tín.',
          image: const Image(
              image: AssetImage("assets/onboarding/onboarding_image_1.png")),
          bgColor: const Color(0xff1eb090),
        ),
        OnboardingPageModel(
          title: 'Nhiều chi nhánh khắp Việt Nam',
          description:
              'Nhiều chi nhánh được trải dài giúp việc mua sắm ở mọi nơi rất dễ dàng',
          image: const Image(
              image: AssetImage("assets/onboarding/onboarding_image_2.png")),
          bgColor: const Color(0xfffeae4f),
        ),
        OnboardingPageModel(
          title: 'Giao hàng cực nhanh',
          description:
              'Với đội ngũ nhân viên đông đảo cửa hàng của chúng tôi đảm bảo tốc độ giao hàng cực nhanh',
          image: const Image(
              image: AssetImage("assets/onboarding/onboarding_image_3.png")),
          bgColor: Colors.purple,
        ),
      ]),
    );
  }
}

class OnboardingPagePresenter extends HookWidget {
  const OnboardingPagePresenter({
    super.key,
    required this.pages,
    this.onSkip,
    this.onFinish,
  });

  final List<OnboardingPageModel> pages;
  final VoidCallback? onSkip;
  final VoidCallback? onFinish;

  @override
  Widget build(BuildContext context) {
    final currentPage = useState(0);
    final pageController = usePageController(initialPage: 0);
    return SafeArea(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        color: pages[currentPage.value].bgColor,
        child: Column(
          children: [
            Expanded(
              // Pageview to render each page
              child: PageView.builder(
                controller: pageController,
                itemCount: pages.length,
                onPageChanged: (idx) {
                  currentPage.value = idx;
                },
                itemBuilder: (context, idx) {
                  final item = pages[idx];
                  return Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: item.image,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Text(item.title,
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleLarge
                                      ?.copyWith(
                                        fontWeight: FontWeight.bold,
                                        color: item.textColor,
                                      )),
                            ),
                            Container(
                              constraints: const BoxConstraints(maxWidth: 280),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 24.0, vertical: 8.0),
                              child: Text(item.description,
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge
                                      ?.copyWith(
                                        color: item.textColor,
                                      )),
                            )
                          ],
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),

            // Current page indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: pages
                  .map((item) => AnimatedContainer(
                        duration: const Duration(milliseconds: 250),
                        width:
                            currentPage.value == pages.indexOf(item) ? 30 : 8,
                        height: 8,
                        margin: const EdgeInsets.all(2.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                      ))
                  .toList(),
            ),

            // Bottom buttons
            SizedBox(
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      style: TextButton.styleFrom(
                          visualDensity: VisualDensity.comfortable,
                          foregroundColor: Colors.white,
                          textStyle: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold)),
                      onPressed: () {
                        onSkip?.call();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      },
                      child: const Text("Bỏ qua")),
                  TextButton(
                    style: TextButton.styleFrom(
                        visualDensity: VisualDensity.comfortable,
                        foregroundColor: Colors.white,
                        textStyle: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    onPressed: () {
                      if (currentPage.value == pages.length - 1) {
                        onFinish?.call();
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignIn()),
                        );
                      } else {
                        pageController.animateToPage(currentPage.value + 1,
                            curve: Curves.easeInOutCubic,
                            duration: const Duration(milliseconds: 250));
                      }
                    },
                    child: Row(
                      children: [
                        Text(
                          currentPage.value == pages.length - 1
                              ? "Đăng nhập"
                              : "Tiếp theo",
                        ),
                        const SizedBox(width: 8),
                        Icon(currentPage.value == pages.length - 1
                            ? Icons.done
                            : Icons.arrow_forward),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class OnboardingPageModel {
  final String title;
  final String description;
  final Image image;
  final Color bgColor;
  final Color textColor;

  OnboardingPageModel({
    required this.title,
    required this.description,
    required this.image,
    this.bgColor = Colors.blue,
    this.textColor = Colors.white,
  });
}
