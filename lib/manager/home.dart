import 'package:flutter/material.dart';
// import 'package:foursquare/manager/manageProduct.dart';
// import 'package:foursquare/manager/manageStaff.dart';
// import 'package:foursquare/manager/warehouse.dart';
import 'package:foursquare/shared/sliderView.dart';

class HomeScreen extends StatelessWidget {
  // Define a list of icons and their corresponding route names
  final List<Map<String, dynamic>> services = [
    {"icon": Icons.home, "route": "/home", "title": "Quản lý Sản phẩm"},
    {
      "icon": Icons.car_rental,
      "route": "/car_rental",
      "title": "Quản lý Nhân viên"
    },
    {"icon": Icons.restaurant, "route": "/restaurant", "title": "Quản lý Kho"},
    // Add more services as needed
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverAppBar(
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Mẫu vải của Foursquare',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'Roboto',
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: SliderView(),
            ),
          ),
          SliverFillRemaining(
            child: MenuServicesPage(services: services),
          ),
        ],
      ),
    );
  }
}

class MenuServicesPage extends StatelessWidget {
  final List<Map<String, dynamic>> services;

  const MenuServicesPage({super.key, required this.services});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  services[index]["icon"],
                  size: 40.0,
                  color: const Color(0xFF0000FF),
                ),
                const SizedBox(height: 8.0),
                Text(
                  services[index]["title"],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
