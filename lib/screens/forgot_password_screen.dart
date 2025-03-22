import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            "Olvidé La Contraseña",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 25),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0xFFEFF9F0),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "¿Restablecer Contraseña?",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    const SizedBox(height: 3),
                    const Text(
                      "No te preocupes, estamos aquí para ayudarte. Ingresa tu dirección de correo electrónico asociada a tu cuenta y te enviaremos un enlace para restablecer tu contraseña.",
                      style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: Colors.black87),
                    ),
                    const SizedBox(height: 50),
                    const CustomTextField(
                      label: "Introduzca La Dirección De Correo Electrónico",
                      hintText: "example@example.com",
                      fillColor: Color(0xFFDFF3D8),
                      keyboardType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child: CustomButton(
                        text: "Siguiente Paso",
                        onPressed: () => Navigator.pushNamed(context, '/security-pin'),
                        color: const Color(0xFF00C8A0),
                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black87),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Center(
                      child: CustomButton(
                        text: "Registrarse",
                        onPressed: () => Navigator.pushNamed(context, '/register'),
                        color: Colors.green[50]!,
                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Center(
                      child: Text(
                        "o regístrese con",
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.facebook, color: Colors.blue, size: 32),
                          onPressed: () {},
                        ),
                        const SizedBox(width: 30),
                        IconButton(
                          icon: const FaIcon(FontAwesomeIcons.google, color: Colors.red, size: 32),
                          onPressed: () {},
                        ),
                      ],
                    ),
                    const SizedBox(height: 25),
                    Center(
                      child: GestureDetector(
                        onTap: () => Navigator.pushNamed(context, '/register'),
                        child: const Text.rich(
                          TextSpan(
                            text: "¿No tienes una cuenta? ",
                            style: TextStyle(color: Colors.black, fontSize: 14),
                            children: [
                              TextSpan(
                                text: "Registrarse",
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
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
