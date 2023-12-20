import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:estados/services/carro_service.dart';
import 'package:estados/modelos/carros.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
    final carroService = Provider.of<CarroService>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 2', style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              color: const Color.fromARGB(255, 21, 88, 143),
              onPressed: () {
                final carro = Carro(
                  nome: 'Corsa',
                  ano: 1996,
                  acessorio: [],
                );
                carroService.carro = carro;
              },
              child: const Text(
                'Criar registro',
                style: TextStyle(color: Colors.white),
              ),
            ),
            MaterialButton(
              color: const Color.fromRGBO(21, 88, 143, 1),
              onPressed: () {
                carroService.mudarAno(2023);
              },
              child: const Text('Mudar ano',
                  style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 21, 88, 143),
              onPressed: () {
                carroService.adicionarAcessorio('AC');
                carroService.adicionarAcessorio('DH');
                carroService.adicionarAcessorio('LL');
              },
              child: const Text('Incluir acessório]',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
