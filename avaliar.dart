import 'package:flutter/material.dart';
import 'wiki_modelo.dart';

class Avaliar extends StatelessWidget {
  final WikiModelo foto;
  const Avaliar({super.key, required this.foto});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.network(foto.urli),
          ElevatedButton(
            onPressed: () {
              foto.aprovar();
              Navigator.pop(context);
            },
            child: const Text('Aprovar'),
          ),
          ElevatedButton(
            onPressed: () {
              foto.reprovar();
              Navigator.pop(context);
            },
            child: const Text('Reprovar'),
          ),
        ],
      ),
    );
  }
}
