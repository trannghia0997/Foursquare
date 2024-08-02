import 'package:foursquare/services/auth/models/user.dart';

const defaultImageAddress = 'https://picsum.photos/200/300';

List<User> userData = [
  const User(
    id: '00000000001',
    email: "customer1@example.com",
    password: "12345678",
    role: Role.customer,
    name: 'customer1',
    phone: '0123456789',
    avatar: defaultImageAddress,
  ),
  const User(
    id: '00000000099',
    email: "salesperson1@example.com",
    password: "Abc12345679!",
    role: Role.salesperson,
    avatar: defaultImageAddress,
  ),
  const User(
    id: '00000000002',
    email: "warehouse1@example.com",
    password: "12345678",
    role: Role.warehouse,
    name: 'warehouse1',
    phone: '0111111111',
    avatar: defaultImageAddress,
  ),
  const User(
    id: '00000000003',
    email: "shipper1@example.com",
    password: "12345678",
    role: Role.warehouse,
    name: 'shipper1',
    phone: '0222222222',
    avatar: defaultImageAddress,
  ),
  const User(
    id: '00000000004',
    email: "manager1@example.com",
    password: "12345678",
    role: Role.manager,
    avatar: defaultImageAddress,
  ),
];
