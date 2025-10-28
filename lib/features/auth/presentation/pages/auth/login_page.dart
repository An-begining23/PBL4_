import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_app/features/auth/data/dtos/login/login_request.dart';
import 'package:my_app/features/auth/data/models/login/login_response.dart';
import 'package:my_app/features/auth/presentation/bloc/login/login_cubit.dart';
import 'package:my_app/features/auth/presentation/pages/auth/registor_page.dart';
import 'package:my_app/features/auth/presentation/pages/User/home_page.dart';
import 'package:my_app/features/auth/data/api/auth/auth_api.dart';
import 'package:dio/dio.dart';
import 'package:my_app/features/auth/storage/storage.dart';
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(AuthApi(Dio())), // Cung cấp LoginCubit cho LoginPage
      child:  LoginPageBody(),
    );
  }
}
class LoginPageBody extends StatefulWidget {
  

  @override
  State<LoginPageBody> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPageBody> {
  bool _showPassword = false;
  String? _emailError;
  String? _passwordError;

  final TextEditingController _emailC = TextEditingController();
  final TextEditingController _passC = TextEditingController();

  void _toggleShowPassword() {
    setState(() => _showPassword = !_showPassword);
  }
  void _onTapLogin(BuildContext context) {
    final req = LoginRequest(email: _emailC.text, password: _passC.text);
    context.read<LoginCubit>().login(req);  // Gọi phương thức login của LoginCubit
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
        color: const Color(0xFF14375F),
        child: Center(
          child: SingleChildScrollView(
            child: BlocConsumer<LoginCubit, LoginState>(
              listener: (context, state) {
                state.maybeWhen(
                  success: (LoginResponse user) {  
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Login Successfully')),
                    );
                    
                    // Sau khi đăng nhập thành công, chuyển đến trang HomePage
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (_) => const HomePage()),
                      (route) => false,
                    );
                  },
                  failure: (message) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text(message), backgroundColor: Colors.red),
                    );
                  },
              
                  orElse: () {},
                );
              },
              builder: (context, state) {
                final isLoading = state.maybeWhen(loading: () => true, orElse: () => false);

                return Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(bottom: 60),
                      child: CircleAvatar(
                        radius: 50,
                        backgroundColor: Color(0xFF002E56),
                        child: FlutterLogo(size: 60),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(bottom: 40),
                      child: Text(
                        'Hello\nWelcome to my app',
                        style: TextStyle(
                          color: Color(0xFF45A29E),
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TextField(
                      controller: _emailC,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                        hintText: "Nhập email",
                        hintStyle: const TextStyle(color: Colors.white70),
                        labelText: 'EMAIL',
                        labelStyle: const TextStyle(
                          color: Color(0xFF6D8199),
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                        errorText: _emailError,
                        enabledBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        focusedBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                        errorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedErrorBorder: const UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 40),
                      child: Stack(
                        alignment: AlignmentDirectional.centerEnd,
                        children: <Widget>[
                          TextField(
                            controller: _passC,
                            style: const TextStyle(color: Colors.white),
                            obscureText: !_showPassword,
                            decoration: InputDecoration(
                              hintText: "Nhập mật khẩu",
                              hintStyle: const TextStyle(color: Colors.white70),
                              labelText: 'PASSWORD',
                              errorText: _passwordError,
                              labelStyle: const TextStyle(
                                color: Color(0xFF6D8199),
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                              ),
                              enabledBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ),
                              errorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              focusedErrorBorder: const UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: _toggleShowPassword,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 10),
                              child: Text(
                                _showPassword ? 'HIDE' : 'SHOW',
                                style: const TextStyle(
                                  color: Colors.white70,
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: isLoading ? null : () => _onTapLogin(context),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF002E56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                        ),
                        child: isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                              )
                            : const Text(
                                'LOGIN',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () {
                            // TODO: Forgot password flow
                          },
                          child: const Text(
                            'Forgot Password?',
                            style: TextStyle(
                              color: Color(0xFF6D8199),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => const RegisterPage()),
                            );
                          },
                          child: const Text(
                            'NEW USER? SIGN UP',
                            style: TextStyle(
                              color: Color(0xFF6D8199),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
