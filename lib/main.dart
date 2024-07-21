import 'package:flutter/material.dart';
import 'package:foursquare/customer/customer_homepage.dart';
import 'package:foursquare/manager/manager_homepage.dart';
import 'package:foursquare/services/auth/models/user.dart';
import 'package:foursquare/preparer/preparer_homepage.dart';
import 'package:foursquare/services/auth/service.dart';
import 'package:foursquare/shipper/Shomepage.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:foursquare/services/auth_service.dart' as auth;

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
          final AuthService authService = AuthService();
          return FutureBuilder(
              future: authService.currentUser,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }
                if (snapshot.hasError) {
                  return const Center(child: Text('An error occurred'));
                }
                final User? user = snapshot.data;
                if (user == null) {
                  return const SignIn();
                }
                switch (user.role) {
                  case Role.customer:
                  case Role.salesperson:
                    return const CustomerHomepage();
                  case Role.warehouse:
                    return const WarehouseHomepage();
                  case Role.shipper:
                    return const ShipperHomepage();
                  case Role.manager:
                    return const ManagerHomepage();
                }
              });
        }),
    GoRoute(
      path: '/login',
      name: 'login',
      builder: (context, state) => const SignIn(),
      redirect: (context, state) async {
        final AuthService authService = AuthService();
        final value = await authService.currentUser;
        if (value != null) {
          return '/';
        }
        return null;
      },
    ),
  ],
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await auth.AuthService.ensureInitialized();
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
    return child;
  }
}
