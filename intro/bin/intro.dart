main() {
 String? msg = "Msg";
 msg = null;
 print(isEmpty(msg));
  // String? nome;
  // print(nome ?? "Sem nome"); retorno -> Sem nome
 
  // nome = "Carlos";
  // print(nome ?? "Sem nome"); retorno -> Carlos

  print(arredondarNota(9.3));
  calcularPrecoTotal(10.50, 3);
  calcularSalario(salarioBase: 1000, horasExtras: 1, desconto: 0, bonificacao: 0);
}

bool isEmpty(String? text) {
  if(text == null){
    return true;
  }
  return text.length == 0;
}

int absoluteValue(int? value) {
  if (value == null) {
    return 0;
  }
  return value.abs();
}

int arredondarNota(double? nota) {
  // verifica se um é nulo, se o da esquerda for nulo irá retornar o da direita e vice e versa
  return nota?.round() ?? 0;
}
// [Opcional]
void calcularPrecoTotal(double precoUnitario, [int quantidade = 1]) {
  double total = precoUnitario * quantidade;
  print("Preço total: R\$${total.toStringAsFixed(2)}");
}

void calcularSalario({required double salarioBase, double? horasExtras,
required double desconto,
 double bonificacao = 0}){

  horasExtras = horasExtras ?? 0;
  
  var salarioFinal = (salarioBase + (horasExtras * 50)) + bonificacao - desconto;
  print("Salário final: R\$ ${salarioFinal}");
}