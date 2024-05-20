import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  final List<Map<String, String>> languages = [
    {
      'name': 'Dart',
      'description':
          'O Dart é uma linguagem de programação fortemente tipada inicialmente criada pela Google em 2011. A missão inicial do Dart era substituir o JavaScript para desenvolvimento de scripts em páginas web. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      'image': 'images/dart.png',
      'grafico': 'images/grafico.png'
    },
    {
      'name': 'Python',
      'description':
          'O Python é uma linguagem de programação amplamente usada em aplicações da Web, desenvolvimento de software, ciência de dados e machine learning (ML). Os desenvolvedores usam o Python porque é eficiente e fácil de aprender e pode ser executada em muitas plataformas diferentes. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      'image': 'images/python.png',
      'grafico': 'images/grafico.png'
    },
    {
      'name': 'Java',
      'description':
          'Java é uma linguagem de programação e plataforma de computação liberada pela primeira vez pela Sun Microsystems em 1995. De um início humilde, ela evoluiu para uma grande participação no mundo digital dos dias atuais, oferecendo a plataforma confiável na qual muitos serviços e aplicativos são desenvolvidos. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      'image': 'images/java.png',
      'grafico': 'images/grafico.png'
    },
    // Adicione mais linguagens conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Linguagens de Programação'),
      ),
      body: ListView.builder(
        itemCount: languages.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(languages[index]['image']!),
              radius: 30,
            ),
            title: Text(languages[index]['name']!),
            trailing: Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    language: languages[index]['name']!,
                    description: languages[index]['description']!,
                    imageUrl: languages[index]['image']!,
                    grafico: languages[index]['grafico']!,
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
