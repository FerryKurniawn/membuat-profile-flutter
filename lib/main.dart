import 'package:flutter/material.dart';

void main() => runApp(const ConnectIDApp());

class ConnectIDApp extends StatelessWidget {
  const ConnectIDApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ConnectID - Profil',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const ProfilePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Data statis (hardcoded) sesuai instruksi tugas
    const String imageUrl =
        'https://placehold.co/150x150/7B68EE/FFFFFF?text=Profil';
    const String fullName = 'Ferry Kurniawan';
    const String email = 'h1101231043@student.untan.ac.id';
    const String city = 'Pontianak, Indonesia';
    const String joined = 'Bergabung sejak 2024';
    const String bio =
        'Saya developer magang di ConnectID. Suka belajar Flutter, menulis UI yang rapi, dan kopi.';

    return Scaffold(
      appBar: AppBar(title: const Text('Halaman Profil'), centerTitle: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
          child: Column(
            children: [
              // Foto Profil bulat
              CircleAvatar(
                radius: 64,
                backgroundColor: Colors.transparent,
                backgroundImage: NetworkImage(imageUrl),
              ),
              const SizedBox(height: 16),
              // Nama
              Text(
                fullName,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // Email (abu-abu)
              Text(email, style: const TextStyle(color: Colors.grey)),
              const SizedBox(height: 16),
              // Row lokasi dan tanggal bergabung
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 18),
                      const SizedBox(width: 6),
                      Text(city),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, size: 18),
                      const SizedBox(width: 6),
                      Text(joined),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 24),
              // Bio (tengah)
              Text(
                bio,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
