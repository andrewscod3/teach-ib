import 'package:flutter/material.dart';

class AsesoriaScreen extends StatelessWidget {
  const AsesoriaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Asesoría', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(40.0),
        child: Center(
          child: Text(
            'Todo miembro se encuentra en el 5TO B para cualquier consulta necesaria respecto a la cuenta, solicitud de materiales y demás.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20, 
              fontWeight: FontWeight.bold,
              height: 1.5, // Interlineado para mejor lectura
            ),
          ),
        ),
      ),
    );
  }
}