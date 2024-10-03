import 'package:flutter/material.dart';
import 'package:foursquare/auth/sign_up.dart';
import 'package:foursquare/shopper/shopper_homepage.dart';
import 'package:foursquare/manager/manager_homepage.dart';
import 'package:foursquare/preparer/preparer_homepage.dart';
import 'package:foursquare/riverpod/cart.dart';
import 'package:foursquare/services/pb.dart';
import 'package:foursquare/shared/models/enums/staff_role.dart';
import 'package:foursquare/shared/models/enums/user_role.dart';
import 'package:foursquare/shared/models/staff_info.dart';
import 'package:foursquare/shared/models/user.dart';
import 'package:foursquare/shipper/shipper_homepage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'auth/sign_in.dart';
import 'onboarding.dart';

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
          if (PBApp.instance.authStore.isValid == false) {
            return const SignIn();
          }
          final userModel = UserDto.fromRecord(PBApp.instance.authStore.model);
          switch (userModel.role) {
            case UserRole.customer:
              return const ShopperHomepage();
            case UserRole.manager:
              return const ManagerHomepage();
            case UserRole.staff:
            default:
              break;
          }
          return FutureBuilder(
              future: PBApp.instance.collection('staff_info').getFirstListItem(
                    'userId = "${PBApp.instance.authStore.model?.id}"',
                  ),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Scaffold(
                    body: Center(
                      child: CircularProgressIndicator(),
                    ),
                  );
                }
                if (snapshot.hasError) {
                  PBApp.instance.authStore.clear();
                  return const SignIn();
                }
                final StaffInfoDto staffInfo =
                    StaffInfoDto.fromRecord(snapshot.data!);
                switch (staffInfo.role) {
                  case StaffRole.salesperson:
                    return const ShopperHomepage();
                  case StaffRole.warehouse:
                    return const WarehouseHomepage();
                  case StaffRole.delivery:
                    return const ShipperHomepage();
                  case StaffRole.other:
                  default:
                    return const SignIn();
                }
              });
        }),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const SignIn(),
      redirect: (context, state) async {
        if (PBApp.instance.authStore.isValid == true) {
          return '/';
        }
        return null;
      },
    ),
    GoRoute(
      path: '/signup',
      name: 'signup',
      builder: (context, state) => const SignUp(),
    )
  ],
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PBApp.init(baseUrl: 'http://127.0.0.1:8090');
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
    return child;
  }
}
