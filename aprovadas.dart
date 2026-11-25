import 'package:flutter/material.dart';
import 'wiki_controle.dart';

class Aprovadas extends StatelessWidget {
  const Aprovadas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 3,
        children: [
          for (var foto in controle.aprovadas) Image.network(foto.urli),
        ],
      ),
    );
  }
}
