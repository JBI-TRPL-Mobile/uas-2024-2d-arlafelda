import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/bitcoin.png', // Ganti dengan path gambar Anda
                height: 100,
              ),
              const SizedBox(height: 20),
              const Text(
                '"Saya Arlafelda Meindra Widayat"',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 40),
              // Tombol Sign In
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_in'); // Navigasi ke Sign In
                },
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 20),
              // Tombol Sign Up
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_up'); // Navigasi ke Sign Up
                },
                child: const Text('Sign Up'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}