import 'package:flutter/material.dart';

import '../model/envio_model.dart';

class EnvioViewModel extends ChangeNotifier {
  String mensaje = '';

  EnvioModelo? calcular(double peso, double distancia) {

    //validación de los valores ingresados
    if (peso <= 0 || distancia <= 0) {
      mensaje = 'Ingrese valores mayores a 0';
      notifyListeners();
      return null;
    }

    mensaje = '';
    notifyListeners();

    double costoBase = 0.0;

    if (peso <= 5) {
      costoBase = peso * 2;
    } else {
      costoBase = peso * 3;
    }
    double recargo = 0.0;

    if (distancia > 100) {
      recargo = costoBase * 0.10;
    }

    return EnvioModelo(
      peso: peso,
      distancia: distancia,
      costoBase: costoBase,
      recargo: recargo,
      total: costoBase + recargo,
    );
  }
}
