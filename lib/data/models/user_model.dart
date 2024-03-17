class UserModel {
  String? message;
  bool? isAuthenticated;
  String? username;
  String? email;
  List<String>? roles;
  String? token;
  String? expiresOn;
  String? refreshTokenExpiration;

  UserModel(
      {this.message,
        this.isAuthenticated,
        this.username,
        this.email,
        this.roles,
        this.token,
        this.expiresOn,
        this.refreshTokenExpiration});

  UserModel.fromJson(Map<String, dynamic> json) {
    message = json['message']as String?;
    isAuthenticated = json['isAuthenticated'];
    username = json['username']as String?;
    email = json['email']as String?;
    roles = json['roles'].cast<String>();
    token = json['token']as String?;
    expiresOn = json['expiresOn'] as String?;
    refreshTokenExpiration = json['refreshTokenExpiration']as String?;
  }


}