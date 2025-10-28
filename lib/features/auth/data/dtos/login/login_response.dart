class LoginResponse {
  final String token;
  final String refreshToken;
  final String name;
  final String? email;
  final String password;
  LoginResponse({
    required this.token,
    required this.refreshToken,
    required this.name,
    required this.password,
    this.email,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      token: json['accessToken'], //token là tên của data khi được trả về từ API
      refreshToken: json['refreshToken'],
      name: json['name'],
      email: json['email'],
      password: json['password'],
    );
  }
}

// bắt buộc tên trả về từ API phải trùng với tên của model trong response
// chuyển từ json sang model để sử dụng trong chương trình/ json được get về từ API
class ListLoginResponse {
  
  final List<LoginResponse> loginResponses;

  ListLoginResponse({required this.loginResponses});

  factory ListLoginResponse.fromJson(List<dynamic> json) {
    List<LoginResponse> loginResponses = [];
    loginResponses = json.map((e) => LoginResponse.fromJson(e)).toList();
    return ListLoginResponse(loginResponses: loginResponses);
  }
}
