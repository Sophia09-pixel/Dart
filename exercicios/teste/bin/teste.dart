int somaLista(List<int> numeros) {
  //jeito mais rápido.
  //int soma = numeros.reduce((a, b) => a + b);
  int soma = 0;
  for (int i = 0; i < numeros.length; i++) {
    soma += numeros[i];
  }
  return soma;
}

List<int> encontrarMaiorMenor(List<int> numeros) {
  List<int> maiorMenor = [];
  int maior = numeros[0]; // Inicializa com o primeiro elemento do array
  int menor = numeros[0]; // Inicializa com o primeiro elemento do array

  //jeito mais fácil
  // int maior = numeros.reduce((a, b) => a > b ? a : b);
  // int menor = numeros.reduce((a, b) => a < b ? a : b);

  for (var i = 1; i < numeros.length; i++) {
    if (numeros[i] > maior) {
      maior = numeros[i]; // Atualiza o maior valor
    }
    if (numeros[i] < menor) {
      menor = numeros[i]; // Atualiza o menor valor
    }
  }
  maiorMenor.add(maior);
  maiorMenor.add(menor);

  return maiorMenor;
}

List<int> removerDuplicatas(List<int> numeros) {
  List<int> listaSemDuplicatas = [];
  // jeito mais rapido
  //List<int> listaSemDuplicados = numeros.toSet().toList();

  for (int i = 0; i < numeros.length; i++) {
    // Verifica se o elemento já está na nova lista
    if (!listaSemDuplicatas.contains(numeros[i])) {
      listaSemDuplicatas.add(numeros[i]);
    }
  }

  return listaSemDuplicatas;
}

int tamanhoTexto(String? texto) {
  return texto?.length ?? -1;
}

void main() {
  //1
  List<int> lista = [1, 2, 3, 4, 5];
  print(somaLista(lista)); // Deve imprimir 15

  //2
  List<int> lista2 = [10, 20, 5, 7, 30, 1];
  print(encontrarMaiorMenor(lista2)); // Deve imprimir [30, 1]

  //3
  List<int> lista3 = [1, 2, 2, 3, 4, 4, 5, 6, 6];
  print(removerDuplicatas(lista3)); // Deve imprimir [1, 2, 3, 4, 5, 6]

  //4
  print(tamanhoTexto("Dart")); // Deve imprimir: 4
  print(tamanhoTexto(null)); // -1
}
