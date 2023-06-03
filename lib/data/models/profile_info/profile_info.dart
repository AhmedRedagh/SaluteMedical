class ProfileInfo {
  String? cityId;
  String? firstName;
  String? lastName;
  String? username;
  String? phone;
  String? email;
  String? birthdate;
  String? password;
  String? passwordConfirmed;

  ProfileInfo(
      {this.cityId,
      this.firstName,
      this.lastName,
      this.username,
      this.phone,
      this.email,
      this.birthdate,
      this.password,
      this.passwordConfirmed});

  set setCity(String id) {
    cityId = id;
  }

  set setFirstName(String name) {
    cityId = name;
  }

  set setLastName(String lname) {
    lastName = lname;
  }

  set setUserName(String userNm) {
    username = userNm;
  }

  set setPhone(String phn) {
    phone = phn;
  }

  set setEmail(String email) {
    this.email = email;
  }

  set setBirthDate(String birthDate) {
    birthdate = birthDate;
  }

  set setPassword(String password) {
    this.password = password;
  }

  set setconfirmedPass(String confirmedPass) {
    passwordConfirmed = passwordConfirmed;
  }
}
