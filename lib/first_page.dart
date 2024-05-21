import 'package:flutter/material.dart';
import 'package:linguagens_programacao/pages/detalhes_page.dart';
import 'package:linguagens_programacao/linguagem.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPage();
}

class _FirstPage extends State<FirstPage> {
  final List<Linguagem> linguagens = [
    Linguagem(
      nome: 'Dart',
      descricao:
          'O Dart é uma linguagem de programação fortemente tipada inicialmente criada pela Google em 2011. A missão inicial do Dart era substituir o JavaScript para desenvolvimento de scripts em páginas web. O Dart aparece em 15° no ranking com as 20 linguagens mais utilizadas, segundo o levantamento de 2023 realizado pelo PopularitY of Programming Language (PYPL):',
      icone: 'images/dart.png',
      grafico: 'images/dartgrafico.png',
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
    Linguagem(
      nome: 'C#',
      descricao:
          'C# é uma linguagem de programação, multiparadigma, de tipagem forte, desenvolvida pela Microsoft como parte da plataforma . NET. A sua sintaxe orientada a objetos foi baseada no C++ mas inclui muitas influências de outras linguagens de programação, como Object Pascal e, principalmente, Java. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/csharp.svg',
      grafico: 'images/grafico.png',
    ),
    Linguagem(
      nome: 'PHP',
      descricao:
          'O PHP (um acrônimo recursivo para PHP: Hypertext Preprocessor ) é uma linguagem de script open source de uso geral, muito utilizada, e especialmente adequada para o desenvolvimento web e que pode ser embutida dentro do HTML. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/php.png',
      grafico: 'images/grafico.png',
    ),
    Linguagem(
      nome: 'Cobol',
      descricao:
          'COBOL (sigla de COmmon Business Oriented Language) - Linguagem Comum Orientada para os Negócios é uma linguagem de programação orientada para o processamento de banco de dados comerciais. Veja abaixo o ranking com as linguagens de programação mais populares em 2023:',
      icone: 'images/cobol.png',
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
            trailing: IconButton(
              icon: Icon(Icons.arrow_forward),
              onPressed: () {
                setState(() {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetalhesPage(
                        linguagem: linguagens[index],
                      ),
                    ),
                  );
                });
              },
            ),
          );
        },
      ),
    );
  }
}
