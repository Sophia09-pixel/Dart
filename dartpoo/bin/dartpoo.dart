void main() {
  var aluno = Aluno("Alan", 18, 10);
//aluno.nome = "Alan";
//aluno.idade = 18;
//aluno.nota = 10;

  var aluno2 = Aluno.ganhadorChallenge("Tech's Version ", 20);

  aluno.exibirInformacoes();
  aluno2.exibirInformacoes();

  var padding1 = Padding(10, 5, 10, 5);
  print(padding1);

  var padding2 = Padding.horizontal(15.0);
  print(padding2);

  var padding3 = Padding.vertical(20.0);
  print(padding3);

  var padding4 = Padding.symmetric(horizontal: 10.0, vertical: 5.0);
  print(padding4);
}

//underline antes da propriedade = private
class Aluno {
  String nome;
  int idade;
  double? nota;

  Aluno(this.nome, this.idade, this.nota);

  Aluno.ganhadorChallenge(this.nome, this.idade) {
    this.nota = 10;
  }

// Aluno (String nome, int idade, double nota){
// this.nome = nome;
// this.idade = idade;
// this.nota = nota;

// }

  void exibirInformacoes() {
    print("Nome do aluno: $nome.");
    print("Idade do aluno: $idade anos.");
    print("Nota do aluno: $nota.");
  }
}

// exercicio aula

class Padding {
  double top = 0;
  double right = 0;
  double bottom = 0;
  double left = 0;

  Padding(this.top, this.right, this.bottom, this.left);

  Padding.horizontal(double valor) {
    this.left = valor;
    this.right = valor;
    this.bottom = 0;
    this.top = 0;
  }

  Padding.vertical(double valor) {
    this.top = valor;
    this.bottom = valor;
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
