int somaLista(List<int> numeros) {
  int soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  return soma;
}

List<int> encontrarMaiorMenor(List<int> numeros) {
  List<int> listaMaiorEMenor = [];
  int maior = numeros[0];
  int menor = numeros[0];

  for (int i = 0; i < numeros.length; i++) {
    if (numeros[i] > maior) {
      maior = numeros[i];
    }
    if (numeros[i] < menor) {
      menor = numeros[i];
    }
  }
  listaMaiorEMenor.add(maior);
  listaMaiorEMenor.add(menor);
  return listaMaiorEMenor;
}

List<int> removerDuplicatas(List<int> numeros) {
  List<int> listaSemDuplicados = [];

  for (int i = 0; i < numeros.length; i++) {
    if (!listaSemDuplicados.contains(numeros[i])) {
      listaSemDuplicados.add(numeros[i]);
    }
  }

  return listaSemDuplicados;
}

int tamanhoTexto(String? texto) {
  return texto?.length ?? -1;
}

void main() {
  //ex1
  List<int> lista = [1, 2, 3, 4, 5];
  print(somaLista(lista)); // Deve imprimir 15

  //ex2
  List<int> lista2 = [10, 20, 5, 7, 30, 1];
  print(encontrarMaiorMenor(lista2)); // Deve imprimir [30, 1]

  //ex3
  List<int> lista3 = [1, 2, 2, 3, 4, 4, 5, 6, 6];
  print(removerDuplicatas(lista3)); // Deve imprimir [1, 2, 3, 4, 5, 6]

  //ex4
  print(tamanhoTexto("Dart")); // Deve imprimir: 4
  print(tamanhoTexto(null)); // Deve imprimir: -1

  //ex5
  var padding = Padding(10, 15, 20, 15);
  print(padding);

  var padding2 = Padding.horizontal(20);
  print(padding2);

  var padding3 = Padding.vertical(10);
  print(padding3);

  var padding4 = Padding.symmetric(horizontal: 15, vertical: 20);
  print(padding4);

  //ex6
  var email = 'sophia.dev0903@gmail.com';
  var senha = 'sophia123';

  var usuario = Usuario(email: email, senha: senha);

  var sistemaLoging = SistemaLogin(usuario);
  print(sistemaLoging.autenticar("sophia.dev0903@gmail.com", "sophia123"));
}

class Padding {
  double top = 0;
  double right = 0;
  double bottom = 0;
  double left = 0;

  Padding(this.top, this.right, this.bottom, this.left);

  Padding.horizontal(double value) {
    this.left = value;
    this.right = value;
    this.bottom = 0;
    this.left = 0;
  }

  Padding.vertical(double value) {
    this.bottom = value;
    this.top = value;
    this.left = 0;
    this.right = 0;
  }

  Padding.symmetric({double horizontal = 0, double vertical = 0}) {
    this.left = horizontal;
    this.right = horizontal;

    this.top = vertical;
    this.bottom = vertical;
  }

  @override
  String toString() {
    return 'Padding(top: $top, right: $right, bottom: $bottom, left: $left)';
  }
}

class Usuario {
  String email = '';
  String senha = '';

  Usuario({required this.email, required this.senha});
}

class SistemaLogin {
  Usuario? usuario;

  SistemaLogin(this.usuario);

  bool autenticar(String email, String senha) {
    if (usuario == null) {
      return false;
    }
    return usuario!.email == email && usuario!.senha == senha;
  }
}
