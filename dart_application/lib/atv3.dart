//==============================================================================

// Atividade III
// Pensar em um projeto único
// Fazer um exemplo seu
// Fazer comentários de tudo que entendeu
// Observação: desenvolver o código para cada exemplo apresentado.

//==============================================================================

//==============================================================================
// String quantidadeProdutos(int opcao, String produto, double quantidade,
//     double valor, double limitemax) {
//   if (opcao == 1) {
//     return adicionarQuantidade(produto, quantidade, valor, limitemax);
//   } else if (opcao == 2) {
//     return subtrairQuantidade(produto, quantidade, valo, );
// }

// Tambem podemos faze-la utilizando Function
String quantidadeProdutos(String produto, double quantidade, double valor,
    Function acao, double limitemax) {
  return acao(produto, quantidade, valor);
}
//==============================================================================

//==============================================================================
double subtrairQuantidade(String produto, double quantidade, double valor) {
  double subtracao = (quantidade - valor);

  // Caso a quantidade seja igual a 0, será informado ao usuário, e atualizado o valor
  if (subtracao == 0) {
    print('A quantidade de $produto chegou em $subtracao');
    return quantidade = (quantidade = subtracao);
  }
  // Caso a quantidade seja menor que 0, será informado ao Funcionario, e o valor não será atualizado.
  else if (subtracao < 0) {
    print(
        'O solicitado está abaixo do disponivel, há apenas $quantidade de $produto em estoque');
    return quantidade;
  } else {
    // Caso não passe por nenhum if, o valor será acrescentado e adicionado normalmente.
    print('Foram removidos $valor de $produto o total agora é de $subtracao');
    return quantidade = subtracao;
  }
}
//==============================================================================

//==============================================================================
double adicionarQuantidade(
    String produto, double quantidade, double valor, double limitemax) {
  double adicao = (quantidade + valor);

  if (adicao == limitemax) {
    print(
        'O limite maximo de $produto foi atingido, foram adicionados apenas ..... no estoque');
    return quantidade;
  } else {
    print('Foram adicionados $valor de $produto, o total agora é de $adicao');
    return quantidade = (quantidade = adicao);
  }
}
//==============================================================================

//==============================================================================
