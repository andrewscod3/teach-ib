import 'package:flutter/material.dart';

class EjesTroncalesScreen extends StatelessWidget {
  const EjesTroncalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Ejes Troncales', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centrado vertical
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSubMenuButton(context, 'MONOGRAFÍA'),
            const SizedBox(height: 25),
            _buildSubMenuButton(context, 'CAS'),
            const SizedBox(height: 25),
            _buildSubMenuButton(context, 'TdC'),
          ],
        ),
      ),
    );
  }

  Widget _buildSubMenuButton(BuildContext context, String titulo) {
    return SizedBox(
      height: 60, // Ligeramente más altos para destacar
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.teal.shade100,
          foregroundColor: Colors.black87,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          elevation: 2,
        ),
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Próximamente: Material de $titulo'),
              backgroundColor: Colors.teal,
              duration: const Duration(seconds: 1),
            ),
          );
        },
        child: Text(
          titulo,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}