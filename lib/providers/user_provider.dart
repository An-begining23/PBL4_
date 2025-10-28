// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:dio/dio.dart'; 
// import 'package:my_app/features/auth/data/dtos/login/login_request.dart';
// import 'package:my_app/features/auth/data/dtos/login/login_response.dart';
// import 'package:my_app/features/auth/presentation/bloc/register/register_status.dart';
// import 'package:my_app/features/auth/presentation/pages/Admin/allusers_page.dart';
// import '/features/auth/storage/storage.dart';
// import 'package:my_app/features/auth/presentation/bloc/register/registor_cubit.dart';
// import 'package:my_app/features/auth/presentation/pages/Login/registor_page.dart';
// import 'package:flutter/material.dart';
// import 'package:my_app/features/auth/presentation/bloc/user/user_cubit.dart';

// // Tạo một widget để cung cấp RegisterCubit
// class AllUsersProvider extends StatelessWidget {
//   final Dio dio;

//   const AllUsersProvider({super.key, required this.dio});

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider<UserCubit>(
//       create: (_) => UserCubit(dio: dio),
//       child: const AllUserPage(),
//     );
//   }
// }
