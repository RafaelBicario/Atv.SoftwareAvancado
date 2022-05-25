// Como é avaliação, pode-se inserir comentários para explicar/justificar 
// a solução/implementação. Caso não tenha, irei interpretar conforme apresentado.

// Critérios de Avaliação: (Tudo que estudamos durante o período)

// Alinhamento com o escopo/domínio;
// Complexidade e/ou relevância da função; 
// Baixo acoplamento (capacidade de reuso) e coesão das definições; 
// Coesão e coerência na sintaxe e semântica;
// Legibilidade do código, nomenclatura sugestivas das funções, variáveis e parâmetros;
// Uso correto e adequado do tratamento de erros e validações.


// elaborar 10 funções correlatas que tratem regras de negócio ou que de suporte
// a requisitos do projeto. As funções elaboradas deverá possuir: 

//(i)  anonymous function e/ou arrow function (pelo menos 2 exemplos); 

//(ii) parâmetros posicionais obrigatórios e opcionais;

//(iii) parâmetros nomeados obrigatórios e opcionais; e 

//(iv) testes unitários. 



import 'dart:io';

String quantidadeProdutos(String produto, double quantidade, double valor,
    Function acao, double limitemax) {
  return acao(produto, quantidade, valor);
}


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



void show() {
  String resultado = quantProdutos(
      50,
      30,
      100,
      (quantidade, valor) =>
          (quantidade < valor) ? 'Removidos' : 'Estoque Zerado');
  print(resultado);
}
//==============================================================================
// String quantidadeProdutos(int opcao, String produto, double quantidade,
//     double valor, double limitemax) {
//   if (opcao == 1) {
//     return adicionarQuantidade(produto, quantidade, valor, limitemax);
//   } else if (opcao == 2) {
//     return subtrairQuantidade(produto, quantidade, valo, );
// }

String quantProdutos(
    double quantidade, double valor, double limitemax, Function acao) {
  return acao(quantidade, valor, limitemax);
}
//==============================================================================

//==============================================================================
double subtrairQuant(String produto, double quantidade, double valor) {
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
    double quantidade, double valor, double limitemax, Function acao) {
  double adicao = (quantidade + valor);

  if (adicao >= limitemax) {
    print(// Caso seja alcançado o limite maximo, o usuário sera informado
        'O limite maximo do produto foi atingido, foram adicionados apenas ..... no estoque');
    return quantidade;
  } else {
    // Caso esteja tudo de acordo, o valor irá ser adicionado normalmente
    print('Foram adicionados $valor ddo produto, o total agora é de $adicao');
    return quantidade = (quantidade = adicao);
  }
}
//==============================================================================

//==============================================================================
void menuQuantidades() {
  print('''Escolha uma opção: 
    1 - Adicionar no estoque;
    2 - Remover no estoque;
  ''');

  print('Escolha a opção: ');
  int opcao = int.parse(stdin.readLineSync()!);

  if (opcao == 1) {
    // Exibe se foi adicionado ou chegou ao limite | Função Anonima
    print('Escolha a quantidade de produto: ');
    double valor = double.parse(stdin.readLineSync()!);
    String resultado = quantProdutos(50, valor, 100,
        (double quantidade, double valor, double limitemax) {
      if (quantidade + valor > limitemax) {
        String resposta = 'Limite maximo alcançado';
        print(resposta);
        return resposta;
      } else {
        String resposta = 'Adicionado';
        print(resposta);
        return resposta;
      }
    });
  } else if (opcao == 2) {
    // Exibe se foi removido ou zerado | Arrow Function
    print('Escolha a quantidade de produto: ');
    double valor = double.parse(stdin.readLineSync()!);
    String resultado = quantProdutos(
        50,
        valor,
        100,
        (double quantidade, double valor) =>
            (valor < quantidade) ? 'Removidos' : 'Estoque Zerado');
    print(resultado);
  } else {
    print("opcao invalida");
  };
}
//==============================================================================
// Auto Avaliação: 
