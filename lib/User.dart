class User {
  String idNumber;
  String name;
  String email;
  String userType;
  String password;

  User({this.idNumber, this.name, this.email, this.userType, this.password});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      idNumber: json['idNumber'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      userType: json['userType'] as String,
      password: json['password'] as String,
    );
  }
}
