import 'package:flutter/material.dart';
import 'package:foursquare_client/client/cart.dart';
import 'package:foursquare_client/client/homepage.dart';
import 'package:foursquare_client/client/payment.dart';
import 'package:foursquare_client/manager/Mhomepage.dart';
import 'package:foursquare_client/models/user.dart';
import 'package:foursquare_client/preparer/Phomepage.dart';
import 'package:foursquare_client/services/pb.dart';
import 'package:foursquare_client/shipper/Shomepage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'sign_in/sign_in.dart';
import 'sign_in/onboarding.dart';

final _router = GoRouter(
  initialLocation: '/hello',
  routes: [
    GoRoute(
        path: '/hello',
        name: 'hello',
        builder: (context, state) => const OnboardingPage(),
        redirect: (context, state) async {
          final prefsInstance = await SharedPreferences.getInstance();
          final isOnboardingShown =
              prefsInstance.getBool('isOnboardingShown') ?? false;
          if (isOnboardingShown == true) {
            return '/login';
          } else {
            prefsInstance.setBool('isOnboardingShown', true);
            return null;
          }
        }),
    GoRoute(
        path: '/',
        name: 'home',
        builder: (context, state) {
          final User userModel =
              User.fromRecord(PBApp.instance.authStore.model);
          switch (userModel.role) {
            case Role.customer:
              return const CustomerHomepage();
            case Role.warehouse:
              return const WarehouseHomepage();
            case Role.shipper:
              return const ShipperHomepage();
            case Role.manager:
              return const ManagerHomepage();
            case Role.salesperson:
              break;
          }
          return const CustomerHomepage();
        }),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const SignIn(),
      redirect: (context, state) {
        if (PBApp.instance.authStore.isValid) {
          return '/';
        } else {
          return null;
        }
      },
    ),
  ],
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PBApp.init(
    // For local development
    // For web: http://127.0.0.1:8090
    // For Android Emulator: http://10.0.2.2:8090
    baseUrl: "https://9nhqk62s-8090.asse.devtunnels.ms",
  );
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return _EagerInitialization(
      child: MaterialApp.router(
        title: 'Foursquare App',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
          useMaterial3: true,
          fontFamily: GoogleFonts.inter().fontFamily,
        ),
        routerConfig: _router,
      ),
    );
  }
}

class _EagerInitialization extends ConsumerWidget {
  const _EagerInitialization({required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(cartNotifierProvider);
    ref.watch(orderedProductNotifierProvider);
    return child;
  }
}
