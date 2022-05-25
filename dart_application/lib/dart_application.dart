//==============================================================================
// Objetivo: Entender contexto | funções anonimas
//==============================================================================
// String verificarAprovacaoCompleto(int opcao, double nota1, double nota2) {
// //==============================================================================
//   // Aprovação pela média
//   if (opcao == 1) {
//     double media = (nota1 + nota2) / 2;

//     if (media >= 6) {
//       return 'aprovado';
//     } else {
//       return 'reprovado';
//     }
// //==============================================================================

// //==============================================================================
//     // Aprovação pela maior nota
//   } else if (opcao == 2) {
//     double maior = (nota1);
//     if (nota2 > nota2) {
//       maior = nota2;
//     }

//     if (maior >= 6) {
//       return 'aprovado';
//     } else {
//       return 'reprovado';
//     }
// //==============================================================================

// //==============================================================================
//     // Aprovação pela menor nota
//   } else if (opcao == 3) {
//     double menor = nota1;
//     if (nota2 < nota1) {
//       menor = nota2;
//     }

//     if (menor >= 6) {
//       return 'aprovado';
//     } else {
//       return 'aprovado';
//     }
//   }
// }
//==============================================================================



//==============================================================================
void show() {}
//==============================================================================

//==============================================================================
String verificarAprovacao(int opcao, double nota1, double nota2) {
  if (opcao == 1) {
    return verificarPelaMedia(nota1, nota2);
  } else if (opcao == 2) {
    return verificarPelaMaiorNota(nota1, nota2);
  } else {
    return verificarPelaMenorNota(nota1, nota2);
  }
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
