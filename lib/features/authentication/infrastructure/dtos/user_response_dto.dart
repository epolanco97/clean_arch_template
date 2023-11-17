class UserResponseDto {
  int id;
  String username;

  UserResponseDto({
    required this.id,
    required this.username,
  });

  factory UserResponseDto.fromJson(Map<String, dynamic> json) => UserResponseDto(
        id: json['id'],
        username: json['username'],
      );
}
