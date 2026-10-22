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
  // Menyimpan status tema aplikasi
  bool _isDarkMode = false;

  // Mengubah tema terang menjadi gelap, atau sebaliknya
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),

      // Tema gelap
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),

      themeMode: _isDarkMode ? ThemeMode.dark : ThemeMode.light,

      // Halaman utama aplikasi
      home: ProfilePage(isDarkMode: _isDarkMode, onToggleTheme: _toggleTheme),
    );
  }
}

class ProfilePage extends StatelessWidget {
  final bool isDarkMode;

  final VoidCallback onToggleTheme;

  const ProfilePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard Mahasiswa'),
        backgroundColor: const Color.fromARGB(255, 7, 85, 149),
        actions: [
          TextButton.icon(
            onPressed: onToggleTheme,
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            label: const Text('Ganti Mode'),
          ),
          const SizedBox(width: 8),
        ],
      ),

      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(radius: 48, child: Icon(Icons.person, size: 48)),
            SizedBox(height: 16),
            Text(
              'Bayu Laksmana',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('NIM: 1124160070'),
            SizedBox(height: 4),
            Text('Kelas: TI SE SH 24'),
          ],
        ),
      ),
    );
  }
}
