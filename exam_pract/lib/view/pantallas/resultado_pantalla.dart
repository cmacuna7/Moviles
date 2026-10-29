import 'package:flutter/material.dart';
import '../../model/envio_model.dart';

class ResultadoPantalla extends StatelessWidget {
  const ResultadoPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    final envio = ModalRoute.of(context)!.settings.arguments as EnvioModelo;
    Widget dato(String titulo, String valor) {
      return ListTile(
        title: Text(titulo),
        trailing: Text(valor),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Resultado'),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  dato('Peso', '${envio.peso} kg'),
                  dato('Distancia', '${envio.distancia} km'),
                  dato('Costo Base', '\$${envio.costoBase.toStringAsFixed(2)}'),
                  dato('Recargo', '\$${envio.recargo.toStringAsFixed(2)}'),
                  dato('Total', '\$${envio.total.toStringAsFixed(2)}'),
                ],
              ),
            ),
            //boton para regresar
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Regresar'),
            ),
          ],
        ),
      ),
    );
  }
}
