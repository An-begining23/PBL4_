//giao tiep voi data base ve nguoi dung, dang nhap, dang xuat, dang ky
abstract class AuthenticationRepository {
  // Future<void> signUp({required String email, required String password});
  Future<void> logIn({required String email, required String password});
  // Future<void> logOut();
}

class AuthenticationException implements Exception {
  final String message;
  AuthenticationException(this.message);
}

class AuthenticationRepositoryImpl extends AuthenticationRepository {
  @override
  Future<void> logIn({required String email, required String password}) async {
    throw UnimplementedError();
  }
}
