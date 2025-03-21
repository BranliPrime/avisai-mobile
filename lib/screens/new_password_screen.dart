import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class NewPasswordScreen extends StatefulWidget {
  const NewPasswordScreen({super.key});

  @override
  _NuevaContrasenaScreenState createState() => _NuevaContrasenaScreenState();
}

class _NuevaContrasenaScreenState extends State<NewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            'Nueva Contraseña',
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
                padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomTextField(
                      label: 'Nueva Contraseña',
                      hintText: '● ● ● ● ● ●',
                      isPassword: true,
                    ),
                    const SizedBox(height: 15),
                    const CustomTextField(
                      label: 'Confirmar Nueva Contraseña',
                      hintText: '● ● ● ● ● ●',
                      isPassword: true,
                    ),
                    const SizedBox(height: 30),
                    CustomButton(
                      text: 'Cambiar Contraseña',
                      color: const Color(0xFF00C8A0),
                      textStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black87),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/success');
                      },
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
