import 'package:flutter/material.dart';
import 'package:my_app/features/auth/presentation/pages/User/home_page.dart';
import 'package:my_app/features/auth/presentation/pages/auth/start_page.dart';
import 'package:my_app/providers/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final auth = context.watch<AuthProvider>();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StartPage(),
      );
  }
}
