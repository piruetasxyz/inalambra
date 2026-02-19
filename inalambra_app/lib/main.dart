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
        Center(),

        // info
        Center(
          child: Column(
            mainAxisAlignment: .center,
            children: [
              const Spacer(),
              const Text('inalambra'),
              const Spacer(),
              Text('v${widget.v}'),
              const Spacer(),
              Text(widget.agno.toString()),
              const Spacer(),
              const Text('app desarrollada por piruetas'),
              const Spacer(),
              const Text('en santiago de chile'),
              const Spacer(),
              const Text('iniciada para el curso'),
              const Spacer(),
              const Text('dis9079 interacciones inalámbricas'),
              const Spacer(),
              const Text('dictado en diseño udp 2026'),
              const Spacer(),
              const Text('por aarón montoya y mateo arce'),
              const Spacer(),
            ],
          ),
        ),
      ][indiceActualPagina],
    );
  }
}
