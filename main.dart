import 'package:flutter/material.dart';
import 'aprovadas.dart';
import 'avaliar.dart';
import 'wiki_controle.dart';

void main() {
  runApp(const Janela());
}

class Janela extends StatelessWidget {
  const Janela({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Principal()),
    );
  }
}

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: GridView.count(
            crossAxisCount: 3,
            children: [
              for (var foto in controle.fotos)
                GestureDetector(
                  onTap: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Avaliar(foto: foto),
                      ),
                    );
                    setState(() {});
                  },
                  child: Image.network(foto.urli),
                ),
            ],
          ),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Aprovadas()),
            );
          },
          child: const Text('Ver aprovadas'),
        ),
      ],
    );
  }
}
