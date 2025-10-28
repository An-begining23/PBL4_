// import 'package:my_app/features/auth/data/models/user/user_model.dart';
// import 'package:my_app/features/auth/data/dtos/user_dto/user_request.dart';
part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  // Trạng thái khởi tạo, với các tham số mặc định là chuỗi rỗng
  const factory RegisterState.initial({String? errorEmail, String? errorPassword}) = _Initial;

  // Trạng thái khi đang tải
  const factory RegisterState.loading() = _Loading;

  // Trạng thái đăng ký thành công, có thể thêm tham số UserModel nếu cần
  const factory RegisterState.registrationSuccessfully(user) = _RegistrationSuccessfully;

  // Trạng thái lỗi, với thông báo lỗi
  const factory RegisterState.failInfo(String errorMessage) = _FailInfo;
}
