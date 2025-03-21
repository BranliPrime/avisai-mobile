import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class FingerprintAuthScreen extends StatelessWidget {
  const FingerprintAuthScreen({super.key});

  Future<void> _authenticate(BuildContext context) async {
    final LocalAuthentication auth = LocalAuthentication();
    bool authenticated = false;
    
    try {
      authenticated = await auth.authenticate(
        localizedReason: 'Escanea tu huella digital para acceder',
        options: const AuthenticationOptions(
          biometricOnly: true,
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      print('Error en autenticación: $e');
    }
    
    if (authenticated) {
      Navigator.pushNamed(context, '/home'); // Redirigir a Home tras autenticación exitosa
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Huella Digital De Seguridad',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 30),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => _authenticate(context), // 🚀 Ahora la huella también autentica
                      child: Container(
                        padding: const EdgeInsets.all(30),
                        decoration: const BoxDecoration(
                          color: Color(0xFF00C8A0),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.fingerprint,
                          size: 100,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    const Text(
                      'Utilice La Huella Digital Para Acceder',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: Text(
                        'Simplifique su inicio de sesión utilizando su huella digital. '
                        'Esta opción le permite acceder de manera rápida y segura '
                        'a su cuenta sin necesidad de recordar contraseñas.',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.black54),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: () => _authenticate(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF00C8A0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40, vertical: 15),
                      ),
                      child: const Text(
                        'Usa El Identificador Táctil',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/security-pin');
                      },
                      child: const Text(
                        '¿O prefiere usar código PIN?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
