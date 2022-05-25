import 'package:dart_application/aprovacao_nota.dart';
import 'package:test/test.dart';

main(){

// Group é usado para rodar varios testes simultaneamente.
  group('description', (){

    test('Calculo média de notas maiores que a média ', () {
      expect(calcularMedia(nota1: 6, nota2: 8), 7);
    });

    test('Calculo média de notas menores que a média ', () {
      expect(calcularMedia(nota1: 5, nota2: 4), 4.5);
    });

// #############################################################################
    test('Verificar se está retornando a maior nota', (){
      expect(calcularMaiorNota(5, 4), 5);
    });

    test('Verificar se está retornando a menor nota', (){
      expect(calcularMenorNota(5, 4), 4);
    });
// #############################################################################
    test('deve gerar exceção',(){
      expect(()=> calcularMedia(nota1: -5, nota2: 4), throwsException);
    });

  });

// Test é utilizado para criarmos um teste em execifico.
  // test('Calculo média de notas maiores que a média ', () {
  //   expect(calcularMedia(nota1: 6, nota2: 8), 7);
  // });

  // test('Calculo média de notas menores que a média ', () {
  //   expect(calcularMedia(nota1: 5, nota2: 4), 4.5);
  // });

}