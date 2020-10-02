import 'models/cliente-pf.dart';
import 'models/cliente-pj.dart';
import 'models/cliente.dart';

import 'repositories/cliente-repository.dart';

import 'repositories/repository.dart';
import 'services/cliente-service.dart';

main() {
  ClientePF cliPF = new ClientePF();
  cliPF.id = 100;
  cliPF.nome = "Jão";
  cliPF.sobreNome = "da Silva";
  cliPF.cpf = "999.999.999-99";

  ClientePJ cliPJ = new ClientePJ();
  cliPJ.id = 101;
  cliPJ.nome = "UCDB";
  cliPJ.razaoSocial = "Universidade Católica Dom Bosco";
  cliPJ.cnpj = "11.111.111/1111-11";

  // Cliente cli = cliPF;
  // cli.id = 102;

  Cliente cli2 = new Cliente();
  cli2.id = 103;
  cli2.nome = "Carlos";
  // print(cli); //Jão da Silva 999.999.999-99
  // print(cli2); //instance of 'Cliente'
  // print(cliPF); //instance of 'ClientePF'
  // print(cliPJ); // instance of 'ClientePJ'

//Dependencia
  Repository<Cliente, int> repository = new ClienteRepository();
  //DI
  ClienteService clienteService = new ClienteService(repository);
  clienteService.cadastrar(cliPF); //0
  clienteService.cadastrar(cliPJ); //1
  clienteService.cadastrar(cli2); // 2

  print("-------------");
  clienteService.buscarTodos().forEach((element) {
    print(element);
  });

  cliPF.nome = "Nome Alterado!";
  ClientePF cliPFAlterado = clienteService.alterar(cliPF);
  //print("Cli Alterado:" + cliPFAlterado.toString());

  print("----Despois Alteracao-----");
  clienteService.buscarTodos().forEach((element) {
    print(element);
  });
}
