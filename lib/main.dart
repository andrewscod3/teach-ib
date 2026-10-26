import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'screens/apartados/apartados_screen.dart';
import 'screens/asignaturas/asignaturas_screen.dart';
import 'screens/ejes_troncales/ejes_troncales_screen.dart';
import 'screens/ejemplos_varios/ejemplos_varios_screen.dart';


// Rutas importadas desde nuestra estructura de carpetas
import 'screens/login/login_screen.dart';
import 'screens/creacion_usuarios/creacion_usuarios_screen.dart';
import 'screens/apartados/apartados_screen.dart';
import 'screens/asignaturas/asignaturas_screen.dart';
import 'screens/ejes_troncales/ejes_troncales_screen.dart';
import 'screens/asesoria/asesoria_screen.dart';
import 'screens/ejemplos_varios/ejemplos_varios_screen.dart';

  Future<void> main() async {
  // Asegura que los bindings de Flutter estén listos antes de inicializar Supabase
  WidgetsFlutterBinding.ensureInitialized();

  // Reemplaza los valores con las credenciales de tu proyecto Supabase
  await Supabase.initialize(
    url: 'https://cbetkagzztpvflsmjfhs.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNiZXRrYWd6enRwdmZsc21qZmhzIiwicm9sZSI6ImFub24iLCJpYXQiOjE3ODkzNDE1OTIsImV4cCI6MjEwNDkxNzU5Mn0.AXo9naQyxW1YtDUkhXNuETPyoqXlUGEkW6SAI3YepWA',
  );

  runApp(const TeachIbApp());
}

class TeachIbApp extends StatelessWidget {
  const TeachIbApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TEACH IB',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // La aplicación iniciará por defecto en la pantalla de Login
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/creacion_usuarios': (context) => const CreacionUsuariosScreen(),
        '/apartados': (context) => const ApartadosScreen(),
        '/asignaturas': (context) => const AsignaturasScreen(),
        '/ejes_troncales': (context) => const EjesTroncalesScreen(),
        '/ejemplos_varios': (context) => const EjemplosVariosScreen(),
        '/asesoria': (context) => const AsesoriaScreen(),
      },
    );
  }
}