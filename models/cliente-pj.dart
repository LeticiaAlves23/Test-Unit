import 'cliente.dart';

class ClientePJ extends Cliente {
  String cnpj;
  String razaoSocial;

  @override
  String toString() {
    return "$nome   $cnpj  $razaoSocial";
  }
}
