import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Mahasiswa',

      debugShowCheckedModeBanner: false,

      // Tema terang
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),

      // Tema gelap
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,

      home: Scaffold(
        appBar: AppBar(
          title: const Text('Dashboard Mahasiswa'),
          actions: [
            IconButton(
              onPressed: _toggleTheme,
              icon: Icon(_isDarkMode ? Icons.light_mode : Icons.dark_mode),
              tooltip: _isDarkMode
                  ? 'Aktifkan mode terang'
                  : 'Aktifkan mode gelap',
            ),
          ],
        ),

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
