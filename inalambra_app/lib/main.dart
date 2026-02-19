import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:io';
import 'package:mqtt_client/mqtt_client.dart';

void main() {
  runApp(const MiApp());
}

class MiApp extends StatelessWidget {
  const MiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'inalambra',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepOrange),
        fontFamily: 'Roboto',
      ),
      home: PaginaInicio(
          titulo: 'inalambra',
          v: '0.0.1',
          agno: 2026),
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({
    super.key,
    required this.titulo,
    required this.v,
    required this.agno,
  });

  final String titulo;
  final String v;
  final int agno;

  @override
  State<PaginaInicio> createState() => _EstadoPaginaInicio();
}

class _EstadoPaginaInicio extends State<PaginaInicio> {
  int indiceActualPagina = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.titulo),
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: indiceActualPagina,
        onDestinationSelected: (int indice) {
          setState(() {
            indiceActualPagina = indice;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(icon: Icon(Icons.home), label: 'inicio'),
          NavigationDestination(icon: Icon(Icons.computer), label: 'servidor'),
          NavigationDestination(icon: Icon(Icons.info), label: 'info'),
        ],
      ),
      body: <Widget>[
        // center
        Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Spacer(),
              const Text('hola!'),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  child: 
              const Text("botón")),
              const Spacer(),
              ElevatedButton(
                  onPressed: () {},
                  child:
                  const Text("otro botón")),
              const Spacer(),
            ],
          ),
        ),
        // servidor
        Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Spacer(),
              Row(children: [
                TextoCentrado('servidor'),
                Expanded(child:
                Switch(value: false, onChanged: (bool valor) {})
                )
              ]),
              Expanded(child:
              Row(
                children: [
                  TextoCentrado('probando'),
                  TextoCentrado('1'),
                  TextoCentrado('2'),
                  TextoCentrado('3'),
                  ]
              )),
              TextoCentrado('abajo'),
              const Spacer(),
            ],
          )
        ),

        // info
        Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Spacer(),
              TextoCentrado('inalambra'),
              TextoCentrado('v${widget.v}'),
              TextoCentrado(widget.agno.toString()),
              TextoCentrado('app desarrollada por piruetas'),
              TextoCentrado('en santiago de chile'),
              TextoCentrado('iniciada para el curso'),
              TextoCentrado('dis9079 interacciones inalámbricas'),
              TextoCentrado('dictado en diseño udp 2026'),
              TextoCentrado('por aarón montoya y mateo arce'),
              const Spacer(),
            ],
          ),
        ),
      ][indiceActualPagina],
    );
  }
}

///////////////////////
// clases para piruetas
///////////////////////

class TextoCentrado extends StatelessWidget {
  const TextoCentrado(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace Container with widgets.
    return Expanded(child: Text(texto, textAlign: TextAlign.center, ));
  }
}

class ToggleConTexto extends StatelessWidget {
  const ToggleConTexto(this.texto, {super.key});

  final String texto;

  @override
  Widget build(BuildContext context) {
    // TODO: Replace Container with widgets.
    return Expanded(child: Text(texto, textAlign: TextAlign.center, ));
  }
}