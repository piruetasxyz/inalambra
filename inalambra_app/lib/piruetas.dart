import 'package:flutter/material.dart';

class TextoCentrado extends StatelessWidget {
  const TextoCentrado(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(texto, textAlign: TextAlign.center));
  }
}

class ToggleConTexto extends StatelessWidget {
  const ToggleConTexto(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    return Expanded(child: Text(texto, textAlign: TextAlign.center));
  }
}
