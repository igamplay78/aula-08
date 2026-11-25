import 'wiki_modelo.dart';

class WikiControle {
  final List<WikiModelo> fotos = [
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Cat_November_2010-1a.jpg/200px-Cat_November_2010-1a.jpg'),
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d1/Mount_Everest_as_seen_from_Drukair2_PLW_edit.jpg/200px-Mount_Everest_as_seen_from_Drukair2_PLW_edit.jpg'),
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Eiffel_Tower_from_the_Champ_de_Mars_2007-05-08_Paris.jpg/200px-Eiffel_Tower_from_the_Champ_de_Mars_2007-05-08_Paris.jpg'),
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Macaca_fuscata_Yakushima.JPG/200px-Macaca_fuscata_Yakushima.JPG'),
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a7/Camponotus_flavomarginatus_ant.jpg/200px-Camponotus_flavomarginatus_ant.jpg'),
    WikiModelo(urli: 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fe/All_Gizah_Pyramids.jpg/200px-All_Gizah_Pyramids.jpg'),
  ];

  List<WikiModelo> get aprovadas =>
      fotos.where((f) => f.aprovada).toList();
}

WikiControle controle = WikiControle();
