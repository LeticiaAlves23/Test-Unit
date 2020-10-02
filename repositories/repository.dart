import '../models/entity.dart';

/**
 * Interface Generica
 */
class Repository<T extends Entity, ID> {
  T cadastrar(T o) {
    return null;
  }

  T alterar(T o) {
    return null;
  }

  void excluir(T o) {}

  T buscarPorID(ID o) {
    return null;
  }

  List<T> buscarTodos() {
    return null;
  }
}
