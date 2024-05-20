import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String language;
  final String description;
  final String imageUrl;
  final String grafico;

  DetailPage({
    required this.language,
    required this.description,
    required this.imageUrl,
    required this.grafico,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(language),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 16),
            Text(
              language,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Image.network(
              imageUrl,
              width: 50,
              height: 50,
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Image.network(
              grafico,
              width: 500,
              //height: 100,
            ),
          ],
        ),
      ),
    );
  }
}
