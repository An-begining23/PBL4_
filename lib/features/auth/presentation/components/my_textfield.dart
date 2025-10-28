import 'package:flutter/material.dart';
// import 'package:my_app/features/auth/presentation/pages/Login/login_page.dart';

class MyTextField extends StatelessWidget {
  final String hinText;
  final bool obscureText;
  final TextEditingController? controller;
  const MyTextField({
    super.key,
    required this.hinText,
    this.obscureText = false,
    this.controller,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        obscureText: true,
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.tertiary,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          fillColor: Theme.of(context).colorScheme.secondary,
          filled: true,
          hintText: "Type something...",
          hintStyle: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
