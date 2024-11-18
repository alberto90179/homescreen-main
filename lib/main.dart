import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            // Imagen de fondo
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/background.jpeg'), 
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Capa transparente
            Container(
              color: Colors.black.withOpacity(0.5), 
            ),
            // Contenido centrado
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Título centrado con tamaño aumentado
                  const Text(
                    'Bienvenido',
                    style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 25),
                  // Logo centrado con tamaño aumentado
                  Image.asset(
                    'assets/logotipo.png',
                    width: 300, 
                    height: 300,
                  ),
                  const SizedBox(height: 35), // Espacio entre el logo y el botón
                  ElevatedButton(
                    onPressed: () {
                      // Acción al presionar el botón
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.greenAccent, // Color de fondo del botón
                      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20), // Padding del botón
                      textStyle: const TextStyle(fontSize: 18), // Estilo del texto del botón
                    ),
                    child: const Text('Entrar'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}