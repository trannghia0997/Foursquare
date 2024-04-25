import 'package:flutter/material.dart';
import 'package:foursquare_client/client/cart.dart';
import 'package:foursquare_client/client/payment.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'client/homepage.dart';
import 'signIn/signIn.dart';
import 'signIn/firstSignIn.dart';
import './profile/userData/user_data.dart';

final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/homepage',
      builder: (context, state) => const Homepage(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const OnboardingPage(),
    ),
    GoRoute(
      path: '/signin',
      builder: (context, state) => const SignIn(),
    ),
  ],
);

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await UserData.init();
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
