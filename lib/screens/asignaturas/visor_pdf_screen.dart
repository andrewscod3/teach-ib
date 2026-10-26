import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class VisorPdfScreen extends StatelessWidget {
  // Variables dinámicas que la pantalla necesita para saber qué mostrar
  final String urlPdf;
  final String tituloAsignatura;

  // Constructor que exige los parámetros obligatorios
  const VisorPdfScreen({
    super.key, 
    required this.urlPdf,
    required this.tituloAsignatura,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          tituloAsignatura, 
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.redAccent,
        foregroundColor: Colors.white,
      ),
      // El widget SfPdfViewer.network se encarga automáticamente de 
      // descargar el archivo desde Supabase y dibujarlo en la pantalla.
      body: SfPdfViewer.network(
        urlPdf,
        canShowScrollHead: false, // Oculta la barra superior de scroll para un diseño más limpio
        canShowScrollStatus: true, // Muestra el número de página al hacer scroll
      ),
    );
  }
}