import 'package:flutter_test/flutter_test.dart';

import 'package:exam_pract/view_model/envio_viewmodel.dart';

void main() {
  test('Hasta 5 kg sin recargo', () {
    final r = EnvioViewModel().calcular(4, 50)!;
    expect(r.costoBase, 8);
    expect(r.recargo, 0);
    expect(r.total, 8);
  });

  test('Mas de 5 kg con recargo', () {
    final r = EnvioViewModel().calcular(10, 150)!;
    expect(r.costoBase, 30);
    expect(r.total, closeTo(33, 0.001));
  });
}
