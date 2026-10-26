import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class CreacionUsuariosScreen extends StatefulWidget {
  const CreacionUsuariosScreen({super.key});

  @override
  State<CreacionUsuariosScreen> createState() => _CreacionUsuariosScreenState();
}

class _CreacionUsuariosScreenState extends State<CreacionUsuariosScreen> {
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  
  String _rolSeleccionado = 'Suscriptor';
  
  // CAMBIO 1: Reducimos la lista a una sola opción
  final List<String> _roles = ['Suscriptor']; 
  
  bool _isLoading = false;

  @override
  void dispose() {
    _nombreController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future<void> _registrarUsuario() async {
    setState(() => _isLoading = true);

    try {
      final nombre = _nombreController.text.trim();
      final email = _emailController.text.trim();
      final password = _passwordController.text.trim();
      final confirmPassword = _confirmPasswordController.text.trim();

      if (nombre.isEmpty || email.isEmpty || password.isEmpty) {
        throw const AuthException('Todos los campos son obligatorios.');
      }
      if (password != confirmPassword) {
        throw const AuthException('Las contraseñas no coinciden.');
      }

      // Registro en Supabase guardando el Nombre y Rol como metadatos
      await Supabase.instance.client.auth.signUp(
        email: email,
        password: password,
        data: {
          'nombre_completo': nombre,
          'rol': _rolSeleccionado,
        },
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Usuario creado con éxito.'), backgroundColor: Colors.green),
        );
        Navigator.pop(context); // Regresa a la pantalla de Login
      }
    } on AuthException catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message), backgroundColor: Colors.redAccent),
        );
      }
    } catch (error) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Error al conectar con el servidor.'), backgroundColor: Colors.redAccent),
        );
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Creación de usuarios', style: TextStyle(color: Colors.black87)),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Añadir nuevo usuario',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            _buildTextField(label: 'Nombre completo', controller: _nombreController, icon: Icons.person),
            const SizedBox(height: 16),
            
            _buildTextField(label: 'Correo electrónico', controller: _emailController, icon: Icons.email, isEmail: true),
            const SizedBox(height: 16),
            
            _buildTextField(label: 'Contraseña', controller: _passwordController, icon: Icons.lock, isPassword: true),
            const SizedBox(height: 16),
            
            _buildTextField(label: 'Repetir contraseña', controller: _confirmPasswordController, icon: Icons.lock_outline, isPassword: true),
            const SizedBox(height: 24),

            // Selector de Rol
            DropdownButtonFormField<String>(
              value: _rolSeleccionado,
              decoration: InputDecoration(
                labelText: 'Perfil / Rol',
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                prefixIcon: const Icon(Icons.badge, color: Colors.teal),
              ),
              items: _roles.map((rol) {
                return DropdownMenuItem(value: rol, child: Text(rol));
              }).toList(),
              
              // CAMBIO 2: Desactivamos el campo al asignar null al onChanged
              onChanged: null, 
            ),
            const SizedBox(height: 32),

            SizedBox(
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                onPressed: _isLoading ? null : _registrarUsuario,
                child: _isLoading
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text('Añadir nuevo', style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.bold)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Componente reutilizable para mantener el código limpio
  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    required IconData icon,
    bool isPassword = false,
    bool isEmail = false,
  }) {
    return TextField(
      controller: controller,
      obscureText: isPassword,
      keyboardType: isEmail ? TextInputType.emailAddress : TextInputType.text,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(icon, color: Colors.teal),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );
  }
}