import 'package:flutter/material.dart';
import 'package:linguagens_programacao/detalhes_page.dart';
import 'package:linguagens_programacao/linguagem.dart';

class FirstPage extends StatelessWidget {
  final List<Linguagem> linguagens = [
    Linguagem(
      nome: 'Dart',
      descricao:
          'O Dart é uma linguagem de programação fortemente tipada inicialmente criada pela Google em 2011. A missão inicial do Dart era substituir o JavaScript para desenvolvimento de scripts em páginas web. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/dart.png',
      grafico: 'images/grafico.png',
    ),
    Linguagem(
      nome: 'Python',
      descricao:
          'O Python é uma linguagem de programação amplamente usada em aplicações da Web, desenvolvimento de software, ciência de dados e machine learning (ML). Os desenvolvedores usam o Python porque é eficiente e fácil de aprender e pode ser executada em muitas plataformas diferentes. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/python.png',
      grafico: 'images/grafico.png',
    ),
    Linguagem(
      nome: 'Java',
      descricao:
          'Java é uma linguagem de programação e plataforma de computação liberada pela primeira vez pela Sun Microsystems em 1995. De um início humilde, ela evoluiu para uma grande participação no mundo digital dos dias atuais, oferecendo a plataforma confiável na qual muitos serviços e aplicativos são desenvolvidos. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/java.png',
      grafico: 'images/grafico.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linguagens de Programação'),
      ),
      body: ListView.builder(
        itemCount: linguagens.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(linguagens[index].icone),
              radius: 20,
            ),
            title: Text(linguagens[index].nome),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesPage(
                    linguagem: linguagens[index],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
