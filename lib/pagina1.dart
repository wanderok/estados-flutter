import 'package:flutter/material.dart';

class Pagina1Page extends StatelessWidget {
  const Pagina1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página 1'),
      ),
      body: const InfoCarro(),
      floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.add),
          onPressed: () => Navigator.pushNamed(context, '/pagina2')),
    );
  }
}

class InfoCarro extends StatelessWidget {
  const InfoCarro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: double.infinity,
      width: double.infinity,
      child:
          const Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(
          'Características',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          thickness: 3,
        ),
        ListTile(title: Text('Nome:')),
        ListTile(title: Text('Ano:')),
        Text(
          'Acessórios',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Divider(
          thickness: 3,
        ),
        ListTile(title: Text('Acessório 1:')),
        ListTile(title: Text('Acessório 2:')),
        ListTile(title: Text('Acessório 3:')),
      ]),
    );
  }
}
