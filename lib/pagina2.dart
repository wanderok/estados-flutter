import 'package:flutter/material.dart';

class Pagina2Page extends StatelessWidget {
  const Pagina2Page({super.key});

  @override
  Widget build(BuildContext context) {
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
              onPressed: () {},
              child: const Text('Criar registro',
                  style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 21, 88, 143),
              onPressed: () {},
              child: const Text('Mudar ano',
                  style: TextStyle(color: Colors.white)),
            ),
            MaterialButton(
              color: const Color.fromARGB(255, 21, 88, 143),
              onPressed: () {},
              child: const Text('Incluir acessório]',
                  style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
