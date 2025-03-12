import 'package:flutter/material.dart';

class InstallationStatusScreen extends StatelessWidget {
  const InstallationStatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Estado de Instalación')),
      body: const Center(child: Text('Pantalla de Estado de Instalación')),
    );
  }
}
