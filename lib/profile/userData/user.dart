class User {
  String image;
  String name;
  String email;
  String phone;
  List<String> addresses;
  String password;
  Role role;

  // Constructor
  User({
    required this.image,
    required this.name,
    required this.email,
    required this.phone,
    required this.addresses,
    required this.password,
    required this.role,
  });

  User copy({
    String? imagePath,
    String? name,
    String? phone,
    String? email,
    List<String>? addresses,
    String? password,
    Role? role,
  }) =>
      User(
        image: imagePath ?? image,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        addresses: addresses ?? this.addresses,
        password: password ?? this.password,
        role: role ?? this.role,
      );

  static User fromJson(Map<String, dynamic> json) => User(
        image: json['imagePath'],
        name: json['name'],
        email: json['email'],
        phone: json['phone'],
        addresses: json['address'],
        password: json['password'],
        role: json['role'],
      );

  Map<String, dynamic> toJson() => {
        'imagePath': image,
        'name': name,
        'email': email,
        'phone': phone,
        'address': addresses,
        'password': password,
        'role': role,
      };
}

enum Role {
  client,
  preparer,
  shipper,
  manager,
}
