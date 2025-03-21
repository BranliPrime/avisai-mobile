import 'package:flutter/material.dart';
import 'dart:math';

class SuccessScreen extends StatefulWidget {
  const SuccessScreen({super.key});

  @override
  _SuccessScreenState createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<SuccessScreen> with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); 

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 5),
                    ),
                  ),
                  AnimatedBuilder(
                    animation: _controller,
                    builder: (context, child) {
                      double angle = _controller.value * 2 * pi;
                      return Transform.translate(
                        offset: Offset(35 * cos(angle), 35 * sin(angle)), 
                        child: child,
                      );
                    },
                    child: const CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'La Contraseña Se Ha\nCambiado Con Éxito',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
