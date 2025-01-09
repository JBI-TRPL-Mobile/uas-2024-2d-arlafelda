import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Icon(Icons.person, size: 100),
            ),
            const SizedBox(height: 20),
            const Text(
              'Account Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('About Learnout'),
              onTap: () {
                // Aksi untuk membuka About
              },
            ),
            ListTile(
              title: const Text('Frequently Asked Questions'),
              onTap: () {
                // Aksi untuk membuka FAQ
              },
            ),
            ListTile(
              title: const Text('Share the Learnout App'),
              onTap: () {
                // Aksi untuk membagikan aplikasi
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => _showLogoutDialog(context),
              child: const Text('Log Out'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Messages',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: 3, // Indeks saat ini, sesuaikan dengan layar saat ini
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          // Logika untuk navigasi ke halaman lain sesuai dengan item yang dipilih
          // Misalnya, menggunakan Navigator.pushNamed
        },
      ),
    );
  }

  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Log Out'),
          content: const Text('Log Out from Learnout?'),
          actions: <Widget>[
            TextButton(
              child: const Text('Cancel'),
              onPressed: () {
                Navigator.of(context).pop(); // Tutup dialog
              },
            ),
            TextButton(
              child: const Text('Log Out'),
              onPressed: () {
                // Tambahkan aksi log out di sini
                Navigator.of(context).pop(); // Tutup dialog
                // Tambahkan logika log out, misalnya menghapus sesi pengguna
              },
            ),
          ],
        );
      },
    );
  }
}