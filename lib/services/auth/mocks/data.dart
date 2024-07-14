import 'package:foursquare/services/auth/models/user.dart';

const userData = [
  User(
    email: "customer1@example.com",
    password: "12345678",
    role: Role.customer,
    name: 'customer1',
    phone: '0123456789',
  ),
  User(
    email: "salesperson1@example.com",
    password: "Abc12345679!",
    role: Role.salesperson,
  ),
  User(
    email: "warehouse1@example.com",
    password: "12345678",
    role: Role.warehouse,
    name: 'warehouse1',
    phone: '0111111111',
  ),
  User(
    email: "shipper1@example.com",
    password: "12345678",
    role: Role.shipper,
    name: 'shipper1',
    phone: '0222222222',
  ),
  User(
    email: "manager1@example.com",
    password: "12345678",
    role: Role.manager,
  ),
];
