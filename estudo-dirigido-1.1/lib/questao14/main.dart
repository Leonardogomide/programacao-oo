import 'carro.dart';

// Testa 2 carros
void main() {
  Motor motor1 = Motor(140, 'Híbrido');
  Motor motor2 = Motor(400, 'Esportivo');

  Carro carro1 = Carro('Corolla', motor1);
  print('Carro 1:');
  carro1.exibirCarro();
  print('');

  Carro carro2 = Carro('Ferrari', motor2);
  print('Carro 2:');
  carro2.exibirCarro();
}
