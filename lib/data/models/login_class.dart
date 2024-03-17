class LoginModel {
  String? username;
  String? password;


  LoginModel({this.username, this.password});

  LoginModel.fromJson(Map<String, dynamic> json) {
    username = json['email'] as String?;
    password = json['password'] as String?;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['email'] = username;
    data['password'] = password;
    return data;
  }
}
