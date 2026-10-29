import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/envio_viewmodel.dart';
import '../widgets/campo_numero.dart';

class EnvioPantalla extends StatefulWidget {
  //mapeo y la logica
  const EnvioPantalla({super.key});

  @override
  State<EnvioPantalla> createState() => _EnvioPantallaState();
}

class _EnvioPantallaState extends State<EnvioPantalla> {
  //mapeo
  final pesoController = TextEditingController();
  final distanciaController = TextEditingController();

  //paso de parametros
  //rutas
  void calcular() {
    double peso = double.tryParse(pesoController.text) ?? 0.0;
    double distancia = double.tryParse(distanciaController.text) ?? 0.0;

    //recibir a view model
    final vm = context.read<EnvioViewModel>();
    final resultado = vm.calcular(peso, distancia);

    //pase de parametros
    if (resultado != null) {
      Navigator.pushNamed(context, '/resultado', arguments: resultado);
    }
  }

  @override
  Widget build(BuildContext context) {
    //declarar view model
    final vm = context.watch<EnvioViewModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Costo de envío'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            CampoNumero(etiqueta: 'Peso (kg)', controller: pesoController),
            const SizedBox(height: 10.0),
            CampoNumero(
              etiqueta: 'Distancia (km)',
              controller: distanciaController,
            ),
            const SizedBox(height: 10.0),
            Text(vm.mensaje, style: TextStyle(color: Colors.red)),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: calcular,
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
