import 'repository.dart';
import '../models/entity.dart';

class RepositoryMongoDBImpl<T extends Entity, ID> implements Repository<T, ID> {
  @override
  T alterar(T o) {
    // TODO: implement alterar
    throw UnimplementedError();
  }

  @override
  T buscarPorID(ID o) {
    // TODO: implement buscarPorID
    throw UnimplementedError();
  }

  @override
  List<T> buscarTodos() {
    // TODO: implement buscarTodos
    throw UnimplementedError();
  }

  @override
  T cadastrar(T o) {
    // TODO: implement cadastrar
    throw UnimplementedError();
  }

  @override
  void excluir(T o) {
    // TODO: implement excluir
  }
}
