import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:my_app/features/auth/presentation/pages/User/home_page.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Đợi 3 giây rồi kiểm tra state
    Future.delayed(const Duration(seconds: 3), () {
      final state = context.read<LoginCubit>().state;
      state.whenOrNull(
        success: (username) {
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (_) => const HomePage()),
          );
        },
        failure: (String message) {
          // Use a named route to avoid referencing a non-existent LoginPage class
          Navigator.of(context).pushReplacementNamed('/login');
        },
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
