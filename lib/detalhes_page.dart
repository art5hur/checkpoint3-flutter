import 'package:flutter/material.dart';
import 'linguagem.dart';

class DetalhesPage extends StatelessWidget {
  final Linguagem linguagem;

  DetalhesPage({required this.linguagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(linguagem.nome),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              (linguagem.nome),
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network(
              linguagem.icone,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 16),
            Text(
              linguagem.descricao,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Image.network(
              linguagem.grafico,
              width: 500,
              //height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
