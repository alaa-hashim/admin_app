class Users {
  final String id;
  final String email;
  final String name;
  final String phone;

  Users(
      {required this.id,
      required this.email,
      required this.name,
      required this.phone});

  // Convert the User object to a Map
  Map<String, dynamic> toMap() {
    return {'id': id, 'email': email, 'name': name, 'phone': phone};
  }
}
