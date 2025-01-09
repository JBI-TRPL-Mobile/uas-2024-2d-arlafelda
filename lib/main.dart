import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'screens/sign_in_screen.dart';
import 'screens/sign_up_screen.dart';
import 'screens/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/', // Menetapkan LoginScreen sebagai tampilan awal
      routes: {
        '/': (context) => const LoginScreen(), // Halaman Login
        '/sign_in': (context) => const SignInScreen(), // Halaman Sign In
        '/sign_up': (context) => const SignUpScreen(), // Halaman Sign Up
        '/welcome': (context) =>  WelcomeScreen(), // Halaman Welcome
      },
    );
  }
}