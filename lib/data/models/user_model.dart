class UserModel {
  String? email;
  String? password;

  UserModel({
    required this.email,
    required this.password,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['email'] = email;
    data['password'] = password;
    return data;
  }
}
