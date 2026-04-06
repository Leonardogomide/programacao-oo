import 'casa.dart';

// Cria casa
void main() {
  Comodo escritorio = Comodo('Escritório', 30.0);
  Comodo dormitorio = Comodo('Dormitório', 20.0);
  Comodo banheiro = Comodo('Banheiro', 10.0);

  Casa casa = Casa('Carla', escritorio, dormitorio, banheiro);
  casa.exibirCasa();
}
