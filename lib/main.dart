import 'package:flutter/material.dart';
import 'package:app_de_leituraa/screens/splash_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App de Leitura Inclusivo', // Título geral do app atualizado
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF8A61A9), // Cor roxa do título
          secondary: const Color(0xFF44C3E0), // Cor azul do botão
        ),
        useMaterial3: true,
        fontFamily: GoogleFonts.lexend().fontFamily, // Fonte Lexend para dislexia
        textTheme: TextTheme(
          bodyLarge: GoogleFonts.lexend(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          bodyMedium: GoogleFonts.lexend(
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      home: const SplashScreen(), // SplashScreen como tela inicial
      debugShowCheckedModeBanner: false, // Remove o banner "Debug"
    );
  }
}

// A classe HomeScreen abaixo não é mais usada como tela inicial.
// Pode ser movida para lib/screens/home_screen.dart ou removida se não for mais necessária.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minha Biblioteca'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Text(
          'Bem-vindo ao App de Leitura!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
