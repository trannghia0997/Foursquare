// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:foursquare_client/manager/manageProduct.dart';
import 'package:foursquare_client/manager/manageStaff.dart';
import 'package:foursquare_client/preparer/Phomepage.dart';

class MenuServices extends StatelessWidget {
  // Define a list of icons and their corresponding route names
  final List<Map<String, dynamic>> services = [
    {"icon": Icons.home, "route": "/home"},
    {"icon": Icons.car_rental, "route": "/car_rental"},
    {"icon": Icons.restaurant, "route": "/restaurant"},
    // Add more services as needed
  ];

  MenuServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (RouteSettings settings) {
        // Define routes and their corresponding widgets
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (BuildContext _) => MenuServicesPage(services: services);
            break;
          case '/home':
            builder = (BuildContext _) => const ManageProductPage();
            break;
          case '/car_rental':
            builder = (BuildContext _) => const ManageStaffPage();
            break;
          case '/restaurant':
            builder = (BuildContext _) => const WarehouseHomepage();
            break;
          // Add more cases for additional routes
          default:
            builder = (BuildContext _) => MenuServicesPage(services: services);
            break;
        }
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              builder(context),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
      },
    );
  }
}

class MenuServicesPage extends StatelessWidget {
  final List<Map<String, dynamic>> services;

  const MenuServicesPage({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr, // Required to provide text direction
      child: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: services.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: () {
              // Navigate to the corresponding route when tapped
              Navigator.pushNamed(context, services[index]["route"]);
            },
            child: Card(
              elevation: 4.0,
              child: Center(
                child: Icon(
                  services[index]["icon"],
                  size: 40.0,
                  color: const Color(0xFF0000FF), // Changed to use Color code
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
