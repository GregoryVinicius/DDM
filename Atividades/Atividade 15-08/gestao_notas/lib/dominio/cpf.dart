class CPF {
  late List<int> numerosCPF;
  CPF(String cpf) {
    eVazio(cpf);
    cpf = cpf.replaceAll(RegExp(r'\d'), '');
    numerosCPF = cpf.split('').map(int.parse).toList(); // 'map' igual ao 'for' porem gera um novo array
    eOnzeNumeros();
    eNumeroDiferentes();
    // eDigitoCorreto(); //Adicionar Função
  }

  eVazio(String cpf){
    if (cpf == '') throw Exception('CPF não pode ser vazio!');
  }

  bool eOnzeNumeros() {
    if (numerosCPF.length == 11) throw Exception('CPF deve possuir 11 números');
    return true;
  }

  bool eNumeroDiferentes() {
    for (var i = 0; i < 9; i++) {
      if (numerosCPF[0] != numerosCPF[i + 1]) return true;
    }
    throw Exception("CPF não pode ter todos os numeros iguais");
  }

  // bool calcularDigito() {
  //   late var total;
  //   late var total2;
  //   for (var i = 0; i < 9; i++) {
  //     for (var j = 0; j < 10; i++) {
  //       total += numerosCPF[i] * j + 1;
  //     }
  //     total2 = (total - numerosCPF[0]) + numerosCPF[9];
  //   }
  //   total = total % numerosCPF[10];
  //   if (numerosCPF[10] != total) throw Exception('O CPF esta incorreto');
  //   return false;
  // }

  int calcularDigito(int indice) {
    var soma = 0;
    for (var peso = 9; peso > -1; peso--, indice--) {
      soma += numerosCPF[indice] * peso;
    }
    var digito = soma % 11;
    if (digito == 10) digito = 0;
    return digito;
  }

  // bool eUnico() {

  // }
}
