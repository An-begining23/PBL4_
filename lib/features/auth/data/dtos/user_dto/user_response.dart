class UserResponse {
  final String id;
  final String name;
  final String avatarurl;
  final String username;
  final String email;
  final String phone;
  UserResponse({
    required this.id,
    required this.name,
    required this.avatarurl,
    required this.username,
    required this.email,
    required this.phone,
  });
  factory UserResponse.fromJson(Map<String, dynamic> json) {
    return UserResponse(
      id: json['id'],
      name: json['name'],
      avatarurl: json['avatar_url'],
      username: json['username'],
      email: json['email'],
      phone: json['phone'],
    );
  }
}