import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Dashboard Mahasiswa')),
        body: const Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Nama : Bayu Laksmana', style: TextStyle(fontSize: 24)),
              Text('NIM : 1124160070', style: TextStyle(fontSize: 16)),
              Text('Kelas : TI SE SH 24', style: TextStyle(fontSize: 16)),
            ],
          ),
        ),
      ),
    );
  }
}
