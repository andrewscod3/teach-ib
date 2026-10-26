import 'package:flutter/material.dart';
import 'visor_pdf_screen.dart';

class ListaDocumentosScreen extends StatelessWidget {
  final String tituloAsignatura;
  // Ahora recibimos DOS listas independientes
  final List<Map<String, String>> documentosNM; // Para Nivel Medio (SL)
  final List<Map<String, String>> documentosNS; // Para Nivel Superior (HL)

  const ListaDocumentosScreen({
    super.key,
    required this.tituloAsignatura,
    required this.documentosNM,
    required this.documentosNS,
  });

  @override
  Widget build(BuildContext context) {
    // DefaultTabController es el widget que gestiona el estado de las pestañas
    return DefaultTabController(
      length: 2, // Número de pestañas
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Documentos: $tituloAsignatura', style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
          // Agregamos la barra de pestañas (TabBar) en la parte inferior del AppBar
          bottom: const TabBar(
            indicatorColor: Colors.white,
            indicatorWeight: 3.0,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white70,
            labelStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            tabs: [
              Tab(text: 'NM (SL)'),
              Tab(text: 'NS (HL)'),
            ],
          ),
        ),
        // TabBarView conecta el contenido con la pestaña seleccionada
        body: TabBarView(
          children: [
            // Contenido de la primera pestaña (NM)
            _buildListaDocumentos(documentosNM),
            // Contenido de la segunda pestaña (NS)
            _buildListaDocumentos(documentosNS),
          ],
        ),
      ),
    );
  }

  // Método auxiliar para dibujar la lista de PDFs. 
  // Lo separamos para no repetir código en ambas pestañas.
  Widget _buildListaDocumentos(List<Map<String, String>> documentos) {
    if (documentos.isEmpty) {
      return const Center(
        child: Text(
          'Aún no hay documentos en este nivel.',
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(20.0),
      itemCount: documentos.length,
      itemBuilder: (context, index) {
        final doc = documentos[index];
        return Card(
          elevation: 3,
          margin: const EdgeInsets.only(bottom: 15),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: const Icon(Icons.picture_as_pdf, color: Colors.teal, size: 35),
            title: Text(doc['nombre']!, style: const TextStyle(fontWeight: FontWeight.bold)),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => VisorPdfScreen(
                    tituloAsignatura: doc['nombre']!,
                    urlPdf: doc['url']!,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}