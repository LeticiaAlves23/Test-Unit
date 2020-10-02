import 'entity.dart';

class Cliente extends Entity<int> {
  String _nome;
  set nome(String nome) {
    this._nome = nome;
  }

  get nome {
    return _nome;
  }

  @override
  String toString() {
    return _nome;
  }
}
