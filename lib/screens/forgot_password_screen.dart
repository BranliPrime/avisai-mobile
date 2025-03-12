import 'package:flutter/material.dart';
import '../widgets/custom_textfield.dart';
import '../widgets/custom_button.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Recuperar Contraseña')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const CustomTextField(label: 'Correo electrónico'),
            const SizedBox(height: 20),
            CustomButton(
              text: 'Enviar Código',
              onPressed: () => Navigator.pushNamed(context, '/security-pin'),
            ),
          ],
        ),
      ),
    );
  }
}