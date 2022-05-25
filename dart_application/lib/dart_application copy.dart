//==============================================================================
// Objetivo: Entender parametro de funções
//==============================================================================
void show() {
  //Função Nomeada
  verificarAprovacao(
      10,
      5,
      (nota1, nota2) =>
          (((nota1 + nota2) / 2) >= 6) ? 'aprovado' : 'reprovado');
}
//==============================================================================

//==============================================================================
String verificarAprovacao(double nota1, double nota2, Function acao) {
  return acao(nota1, nota2);
}
//==============================================================================

//==============================================================================
// Verificar se está aprovado ou reprovado pela média.
String verificarPelaMedia(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;

  if (media >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
//==============================================================================

//==============================================================================
// Verificar se está aprovado ou reprovado pela maior nota.
String verificarPelaMaiorNota(double nota1, double nota2) {
  double maior = (nota1);
  if (nota2 > nota2) {
    maior = nota2;
  }

  if (maior >= 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
//==============================================================================

//==============================================================================
// Verificar se está aprovado ou reprovado pela menor nota.
String verificarPelaMenorNota(double nota1, double nota2) {
  double menor = nota1;
  if (nota2 < nota1) {
    menor = nota2;
  }

  if (menor >= 6) {
    return 'aprovado';
  } else {
    return 'aprovado';
  }
}
//==============================================================================

//==============================================================================

