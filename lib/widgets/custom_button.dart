import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor; // Nuevo parámetro agregado
  final TextStyle? textStyle;
  final Color? borderColor; // Parámetro para el borde

  const CustomButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.color,
    this.textColor, // Agregado aquí
    this.textStyle,
    this.borderColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Theme.of(context).primaryColor,
        foregroundColor: textColor ?? Colors.white, // Se usa foregroundColor para el texto
        padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 32),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
          side: borderColor != null ? BorderSide(color: borderColor!) : BorderSide.none,
        ),
      ),
      child: Text(
        text,
        style: textStyle ??
            TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: textColor ?? Colors.white, // Se usa el nuevo parámetro aquí
            ),
      ),
    );
  }
}
