import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final String label;
  final bool isPassword;
  final String? hintText;
  final Color? fillColor; // Nuevo parámetro opcional
  final TextInputType? keyboardType; // Agregado: Define el tipo de teclado
  final TextInputAction? textInputAction; // Agregado: Define la acción del teclado
  final List<String>? autofillHints; // Agregado: Habilita el autocompletado

  const CustomTextField({
    super.key,
    required this.label,
    this.isPassword = false,
    this.hintText,
    this.fillColor, // Se permite personalizar el color de fondo
    this.keyboardType, // Agregado
    this.textInputAction, // Agregado
    this.autofillHints, // Agregado
  });

  @override
  _CustomTextFieldState createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.isPassword;
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          obscureText: _obscureText,
          keyboardType: widget.keyboardType, // Agregado
          textInputAction: widget.textInputAction, // Agregado
          autofillHints: widget.autofillHints, // Agregado
          decoration: InputDecoration(
            hintText: widget.hintText,
            filled: widget.fillColor != null, // Solo se activa si `fillColor` tiene un valor
            fillColor: widget.fillColor ?? Colors.grey[200], // Color de fondo por defecto
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide.none,
            ),
            suffixIcon: widget.isPassword
                ? IconButton(
                    icon: Icon(
                      _obscureText ? Icons.visibility_off : Icons.visibility,
                      color: Colors.grey,
                    ),
                    onPressed: _togglePasswordVisibility,
                  )
                : null,
          ),
        ),
      ],
    );
  }
}
