class WikiModelo {
  final String urli;
  bool aprovada = false;

  WikiModelo({required this.urli});

  void aprovar() {
    aprovada = true;
  }

  void reprovar() {
    aprovada = false;
  }
}
