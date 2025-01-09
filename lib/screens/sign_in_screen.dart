import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Sign In')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Hallo Saya Arla!', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 20),
              TextField(
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {
                  // Logika untuk masuk
                  Navigator.pushReplacementNamed(context, '/welcome'); // Navigasi ke WelcomeScreen
                },
                child: const Text('Sign In'),
              ),
              const SizedBox(height: 20),
              
              // Baris untuk ikon login dengan Google dan Facebook
              const Text('or sign in with', style: TextStyle(fontSize: 16)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IconButton(
                    icon: const Icon(Icons.android), // Ganti dengan ikon Google
                    onPressed: () {
                      // Logika untuk login dengan Google
                    },
                    tooltip: 'Sign in with Google',
                  ),
                  const SizedBox(width: 20),
                  IconButton(
                    icon: const Icon(Icons.facebook), // Ganti dengan ikon Facebook
                    onPressed: () {
                      // Logika untuk login dengan Facebook
                    },
                    tooltip: 'Sign in with Facebook',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman Login
                },
                child: const Text('Don\'t have an account? Sign Up Now'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}