import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dio/dio.dart';
import 'package:my_app/features/auth/data/api/auth/auth_api.dart';
import 'package:my_app/features/auth/data/dtos/register/register_request.dart';
part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
   final Dio _dio;
  late final AuthApi _registerApi;
  RegisterCubit()
    : _dio = Dio(), 
      super(_Loading()) {
    _registerApi = AuthApi(_dio);
  }
  Future<void> registerUser(RegisterRequest registerRequest) async {
    // try {
      final user = await _registerApi.register(registerRequest);
      emit(RegisterState.registrationSuccessfully(user));
    // } catch (e) {
    //   emit(RegisterState.failInfo(e.toString()));
    }
  }
