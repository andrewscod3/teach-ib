import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class ApartadosScreen extends StatelessWidget {
  const ApartadosScreen({super.key});

  // Función para cerrar sesión en Supabase
  Future<void> _cerrarSesion(BuildContext context) async {
    await Supabase.instance.client.auth.signOut();
    if (context.mounted) {
      // Reemplazamos la pantalla actual para que el usuario no pueda retroceder al menú
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Menú Principal', style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.blue.shade900,
        foregroundColor: Colors.white,
        automaticallyImplyLeading: false, // Oculta la flecha de retroceso predeterminada
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () => _cerrarSesion(context),
            tooltip: 'Cerrar sesión',
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Reutilizamos tu logo para mantener la identidad visual
              Image.asset(
                'assets/images/app_startup.png',
                height: 100,
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 50),
              
              // Botones de navegación
              _buildMenuButton(context, 'Asignaturas', '/asignaturas'),
              const SizedBox(height: 20),
              _buildMenuButton(context, 'Ejes Troncales', '/ejes_troncales'),
              const SizedBox(height: 20),
              _buildMenuButton(context, 'Trabajos Internos', '/ejemplos_varios'),// Ruta vacía por ahora
              const SizedBox(height: 20),
              _buildMenuButton(context, 'Asesoría', '/asesoria'),
            ],
          ),
        ),
      ),
    );
  }

  // Componente reutilizable para los botones del menú (Código limpio y DRY)
  Widget _buildMenuButton(BuildContext context, String titulo, String ruta) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.redAccent, // Color basado en tu prototipo
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          elevation: 5, // Sombra ligera para dar efecto de botón clickeable
        ),
        onPressed: () {
          if (ruta.isNotEmpty) {
            // Navega a la ruta definida en el main.dart
            Navigator.pushNamed(context, ruta);
          } else {
            // Acción temporal para opciones en desarrollo
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Próximamente: Conexión con PDFs de Supabase'),
                backgroundColor: Colors.teal,
              ),
            );
          }
        },
        child: Text(
          titulo,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}