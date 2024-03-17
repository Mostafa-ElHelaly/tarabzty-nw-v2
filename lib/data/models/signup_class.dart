class SignupModel {
  String? firstName;
  String? lastName;
  DateTime? dateOfBirth;
  String? phoneNumber;
  String? email;
  String? password;
  String? confirmPassword;

  SignupModel(
      {this.firstName,
      this.lastName,
      this.dateOfBirth,
      this.phoneNumber,
      this.email,
      this.password,
      this.confirmPassword});

  // SignupModel.fromJson(Map<String, dynamic> json) {
  //   firstName = json['firstName'];
  //   lastName = json['lastName'];
  //   username = json['username'];
  //   dateOfBirth = json['dateOfBirth'];
  //   phoneNumber = json['phoneNumber'];
  //   email = json['email'];
  //   password = json['password'];
  //   confirmPassword = json['confirmPassword'];
  // }

  Map<String, dynamic> toJson() {
    print(dateOfBirth?.toIso8601String());
    List<String> formattedData = (dateOfBirth?.toIso8601String()??'').split('T');
    print(formattedData[0]);
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['firstName'] = firstName;
    data['lastName'] = lastName;
    data['username'] = firstName!+"_"+lastName!;
    data['date_of_Birth'] = formattedData[0];
    data['phone_Number'] = phoneNumber;
    data['email'] = email;
    data['password'] = password;
    data['confirm_Password'] = confirmPassword;
    return data;
  }
}
