class AuthUser {
  final String? email;
  final String? phone;
  final String password;
  final String nickname;
  final String? fullName;
  final DateTime birthday;

  AuthUser(
    this.email,
    this.phone,
    this.password,
    this.nickname,
    this.fullName,
    this.birthday,
  );
}
