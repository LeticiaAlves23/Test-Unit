import 'cliente.dart';

class ClientePF extends Cliente {
  String sobreNome;
  String cpf;

  ClientePF() {}
  ClientePF.p(String nome, String sobreNome, String cpf) {
    this.nome = nome;
    this.sobreNome = sobreNome;
    this.cpf = cpf;
  }

  @override
  String toString() {
    return "$nome $sobreNome $cpf";
  }
}
