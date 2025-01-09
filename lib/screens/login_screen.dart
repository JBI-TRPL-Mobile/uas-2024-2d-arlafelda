import 'package:flutter/material.dart';
import '../widgets/image_placeholder.dart';

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
              const ImagePlaceholder(), // Menggunakan widget khusus untuk gambar
              const SizedBox(height: 20),
              const Text(
                '"Saya Arlafelda Meindra Widayat"',
                textAlign: TextAlign.center,
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              const SizedBox(height: 20),
              // Garis Bawah
              Container(
                width: 100,
                height: 5,
                //color: Colors.black,
              ),
              const SizedBox(height: 20),
              // Tombol Sign In dan Sign Up
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk Sign In
                    },
                    child: const Text('Sign In'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Logika untuk Sign Up
                    },
                    child: const Text('Sign Up'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}