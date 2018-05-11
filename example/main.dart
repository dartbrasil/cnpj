import 'package:cnpj/cnpj.dart';

main() {
  print(gerarCNPJ());
  print(gerarCNPJ(formatted: true));
  print(validarCNPJ('11.222.333/0001-81'));
}
