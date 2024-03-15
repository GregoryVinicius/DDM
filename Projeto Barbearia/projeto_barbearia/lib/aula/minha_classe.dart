class MinhaClasse {
  int x = 0;
  int y = 0;

  int _z = 0;

  int get z => _z;

  set z(int valor) => _z = valor;

  MinhaClasse({required this.x, required this.y}) {
    print('x é $x o atributo x é ${this.x}');

    print('x é ${this.x} e y = ${this.y}');
  }

  void funcao(int x, int y){
    
  }
}

