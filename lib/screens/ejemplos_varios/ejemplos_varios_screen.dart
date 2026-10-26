import 'package:flutter/material.dart';

class EjemplosVariosScreen extends StatelessWidget {
  const EjemplosVariosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // Modifica únicamente esta línea cambiando el título:
        title: const Text('Trabajos Internos', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.picture_as_pdf, size: 80, color: Colors.teal),
            SizedBox(height: 20),
            Text(
              'Próximamente:\nRepositorio de PDFs desde Supabase',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }
}