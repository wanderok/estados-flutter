import 'package:flutter/material.dart';

import '../modelos/carros.dart';

class CarroService with ChangeNotifier {
  Carro? _carro;

  // ignore: unnecessary_getters_setters
  Carro? get carro => _carro;

  bool get existeCarro => _carro != null ? true : false;

  set carro(Carro? c) {
    _carro = c;
    notifyListeners();
  }

  void mudarAno(int a) {
    _carro?.ano = a;
    notifyListeners();
  }

  void adicionarAcessorio(String a) {
    _carro?.acessorio.add(a);
    notifyListeners();
  }

  void apagaCarro() {
    _carro = null;
    notifyListeners();
  }
}
