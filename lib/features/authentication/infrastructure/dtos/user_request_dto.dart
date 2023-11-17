class UserRequestDto {
  String email;
  String password;

  UserRequestDto({required this.email, required this.password});

  Map<String, dynamic> toJson() => {
        'username': email,
        'password': password,
      };
}
