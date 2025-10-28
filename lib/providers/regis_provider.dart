// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dio/dio.dart'; 
// import 'package:my_app/features/auth/data/dtos/login/login_request.dart';
// import 'package:my_app/features/auth/data/dtos/login/login_response.dart';
// import '/features/auth/storage/storage.dart';
// import 'package:flutter/material.dart';
// import 'package:my_app/features/auth/data/api/auth/auth_api.dart';
// import 'package:my_app/features/auth/presentation/bloc/register/register_cubit.dart';

// // Tạo một widget để cung cấp RegisterCubit
// class RegisterProvider extends StatelessWidget {
//   final Dio dioInstance;

//   const RegisterProvider({super.key, required this.dioInstance});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<RegisterCubit>(
//       create: (_) => RegisterCubit(dioInstance: dioInstance),
//       child: const RegisterPage(),
//     );
//   }
// }
