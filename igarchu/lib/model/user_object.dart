class UserObject {
  late final String id;
  late final String fullname;
  late final String email;
  late final String role;
  late final String password;

  UserObject({
    required this.id,
    required this.fullname,
    required this.email,
    required this.role,
    required this.password,
  });

   static UserObject fromJson(Map<String, dynamic> json) =>
      UserObject(
        id: json['id'],
        fullname: json['name'],
        email: json['email'],
        role: json['role'],
        password: json['password'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': fullname,
        'email': email,
        'role': role,
        'password': password,
      };
}
