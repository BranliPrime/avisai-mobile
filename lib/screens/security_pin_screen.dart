import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../widgets/custom_button.dart';

class SecurityPinScreen extends StatefulWidget {
  @override
  _SecurityPinScreenState createState() => _SecurityPinScreenState();
}

class _SecurityPinScreenState extends State<SecurityPinScreen> {
  List<String> pin = List.filled(6, "");
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00C8A0),
      body: Column(
        children: [
          const SizedBox(height: 80),
          const Text(
            "Pin De Seguridad",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
            textAlign: TextAlign.center,
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
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50), 
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Ingrese El Pin De Seguridad",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 35),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        6,
                        (index) => Container(
                          margin: const EdgeInsets.symmetric(horizontal: 4),
                          width: 40,
                          height: 40,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.transparent,
                            border: Border.fromBorderSide(BorderSide(color: Color(0xFF00C78C), width: 2)),
                          ),
                          child: Center(
                            child: TextField(
                              focusNode: focusNodes[index], 
                              textAlign: TextAlign.center,
                              keyboardType: TextInputType.number,
                              maxLength: 1,
                              cursorColor: Colors.transparent,
                              style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                height: 1,
                                color: Colors.black,
                              ),
                              decoration: const InputDecoration(
                                counterText: "",
                                border: InputBorder.none, 
                                contentPadding: EdgeInsets.only(bottom: 5),
                              ),
                              onChanged: (value) {
                                setState(() {
                                  pin[index] = value;
                                });

                                if (value.isNotEmpty && index < 5) {
                                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                                } else if (value.isEmpty && index > 0) {
                                  FocusScope.of(context).requestFocus(focusNodes[index - 1]);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    CustomButton(
                      text: 'Aceptar',
                      color: const Color(0xFF00C8A0),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
                      onPressed: () {
                        Navigator.pushNamed(context, '/new-password'); // Navega a la pantalla de nueva contraseña
                      },
                    ),
                    const SizedBox(height: 15),
                    CustomButton(
                      text: 'Enviar De Nuevo',
                      color: Colors.white,
                      borderColor: Colors.black12,
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 100),
                    const Text(
                      "o regístrese con",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
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
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/register'),
                      child: const Text.rich(
                        TextSpan(
                          text: "¿No tienes una cuenta? ",
                          style: TextStyle(color: Colors.black87),
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
