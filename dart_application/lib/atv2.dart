//==============================================================================

// Atividade II - Defina 3 funções do mesmo contexto e uma interface para estas
// funções
// → função para escolha das funções do Salário

String salarioOpcoes(double salario, double valor, Function acao) {
  return acao(salario, valor);
}
//==============================================================================

//==============================================================================
// → Receber salario e um valor. Bonificar e retornar o valor do salário.
String bonificarSalario(double salario, double valor) {
  double resultado = (salario + valor);

  return 'Seu salario é: $resultado';
}
//==============================================================================

//==============================================================================
// → Receber salario e um valor. Descontar e retornar o valor do salário.
String descontarSalario(double salario, double valor) {
  double resultado = (salario - valor);

  return 'Seu salario é: $resultado';
}
//==============================================================================

//==============================================================================
// → Receber salario e um valor. Neste caso o valor é o bônus que tem encargos de 10%.
// Adicionar o bônus e retornar o valor do salário.

String bonusSalario(double salario, double valor) {
  valor = (valor * 100 / 10);

  double resultado = (salario + valor);

  return 'Seu salario é: $resultado';
}
//==============================================================================

