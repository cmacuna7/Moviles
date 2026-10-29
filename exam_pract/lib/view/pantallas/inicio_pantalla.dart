import 'package:flutter/material.dart';

class InicioPantalla extends StatelessWidget {
  const InicioPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Costo de Envío de Paquetes',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10.0),
              const Text(
                'Calcula el costo de envío según el peso y la distancia',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/envio');
                },
                child: const Text('Comenzar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
