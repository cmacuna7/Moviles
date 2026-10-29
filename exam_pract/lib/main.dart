import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view_model/envio_viewmodel.dart';
import 'view/pantallas/inicio_pantalla.dart';
import 'view/pantallas/envio_pantalla.dart';
import 'view/pantallas/resultado_pantalla.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (_) => EnvioViewModel(),

  child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Costo de Envío',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const InicioPantalla(),
        '/envio': (context) => const EnvioPantalla(),
        '/resultado': (context) => const ResultadoPantalla(),
      },
    );
  }
}
