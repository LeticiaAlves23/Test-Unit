import 'dart:html';
import 'dart:math';
import 'package:test/test.dart';
import 'package:matcher/matcher.dart';
import '../models/cliente-pf.dart';
import '../models/cliente.dart';
import '../repositories/cliente-repository.dart';
import '../repositories/repository.dart';
import '../services/cliente-service.dart';

void main() {
  test('Deve Cadastrar ClientePF', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    clienteService.cadastrar(cliPF);

    var length = clienteService.buscarTodos().length;
    expect(length, 1);
  });

  test('Deve Alterar Cliente', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    clienteService.cadastrar(cliPF);
    cliPF.nome = 'Zé';
    cliPF.sobreNome = ' da silva';
    cliPF.cpf = '123';

    ClientePF objAlterado = clienteService.alterar(cliPF);
    expect(objAlterado.nome, 'Zé');
  });
    test('Deve excluir Cliente', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    ClientePF cliExcluir = Client.(cliPF);
    expect(cliExcluir.nome, 'Jão');
  });

    test('Deve Buscar Por Id ClientePF', () {
    //mock
    var cliPF = ClientePF();
    cliPF.id = 100;
    cliPF.nome = 'Jão';
    cliPF.sobreNome = 'da Silva';
    cliPF.cpf = '999.999.999-99';

    //Dependencia
    Repository<Cliente, int> repository = ClienteRepository();
    //DI
    var clienteService = ClienteService(repository);
    clienteService.buscaPorID();

    var length = clienteService.buscaPorID().lenght;
    expect(length, 1);
  });
}

