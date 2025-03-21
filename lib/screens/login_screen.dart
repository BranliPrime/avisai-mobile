import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscureText = true;

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'Bienvenido',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFEFF9F2),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomTextField(
                      label: 'Correo Electrónico',
                      hintText: 'example@example.com',
                    ),
                    const SizedBox(height: 15),
                    CustomTextField(
                      label: 'Contraseña',
                      isPassword: true,
                      hintText: '● ● ● ● ● ●',
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Iniciar Sesión',
                      color: const Color(0xFF00C8A0),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
                      onPressed: () => Navigator.pushNamed(context, '/home'),
                    ),
                    const SizedBox(height: 8),
                    TextButton(
                      onPressed: () => Navigator.pushNamed(context, '/forgot-password'),
                      child: const Text(
                        '¿Olvidó su contraseña?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),
                    CustomButton(
                      text: 'Registrarse',
                      color: Colors.green[50]!,
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
                      onPressed: () => Navigator.pushNamed(context, '/register'),
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/fingerprint'),
                      child: const Text.rich(
                        TextSpan(
                          text: 'Utilice La ',
                          style: TextStyle(fontSize: 14, color: Colors.black87),
                          children: [
                            TextSpan(
                              text: 'Huella Digital',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
                              ),
                            ),
                            TextSpan(
                              text: ' Para Acceder',
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'o regístrese con',
                      style: TextStyle(fontSize: 14, color: Colors.black87),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue, size: 30),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 20),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red, size: 30),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: const Text.rich(
                        TextSpan(
                          text: '¿No tienes una cuenta? ',
                          style: TextStyle(color: Colors.black87),
                          children: [
                            TextSpan(
                              text: 'Registrarse',
                              style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
