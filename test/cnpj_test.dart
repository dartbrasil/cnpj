import 'package:cnpj/cnpj.dart';
import 'package:test/test.dart';

void main() {
  group('Gerador de CNPJ', () {
    test('cria um CNPJ válido', () {
      expect(validarCNPJ(gerarCNPJ()), isTrue);
    });
    test('cria um CNPJ válido e formatado', () {
      expect(new RegExp(r'\.|-').hasMatch(gerarCNPJ(formatted: true)), isTrue);
    });
    test('não valida CNPJ inválido', () {
      expect(validarCNPJ('111.111.111-11'), isFalse);
    });
  });
}
