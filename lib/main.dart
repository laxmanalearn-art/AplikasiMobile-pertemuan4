import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplikasi Kampus',

      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),

      home: Scaffold(
        appBar: AppBar(title: const Text('Belajar Flutter')),
        body: const Center(
          child: Text('Belajar Flutter!', style: TextStyle(fontSize: 20)),
        ),
      ),
    );
  }
}
