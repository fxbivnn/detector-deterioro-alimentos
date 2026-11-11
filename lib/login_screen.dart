import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'services/sensor_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _correoController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> iniciarSesion(String correo, String password) async {
    // Simulamos un pequeño tiempo de carga para el video demo
    await Future.delayed(const Duration(seconds: 1));
    
    // Navegamos directamente al Dashboard simulando éxito
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MainScreen(appState: AppState()), 
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detector de Deterioro - Login')),
      body: Padding(
        padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: _correoController,
            decoration: InputDecoration(labelText: 'Correo Electrónico'),
          ),
          TextField(
            controller: _passwordController,
            decoration: InputDecoration(labelText: 'Contraseña'),
            obscureText: true,
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              iniciarSesion(_correoController.text, _passwordController.text);
            },
            child: Text('Iniciar Sesión'),
          ),
        ],
      ),
    ),
   );
  }
}