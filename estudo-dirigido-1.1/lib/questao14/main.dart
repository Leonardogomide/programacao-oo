/*
Crie uma classe Motor com os seguintes atributos obrigatórios:
• int potencia
• String tipo
Crie uma classe Carro com os seguintes atributos obrigatórios:
• String modelo
• Motor motor
Implemente os construtores para ambas as classes. Crie os seguintes métodos:
• exibirMotor() → mostra os dados do motor
• exibirCarro() → mostra o modelo do carro e os dados do motor
No main(), instancie exatamente 2 carros diferentes, cada um com um motor, e exiba os dados completos.
*/

import 'carro.dart';

void main() {
  Motor motor1 = new Motor(140, 'Híbrido');
  Motor motor2 = new Motor(400, 'Esportivo');

  Carro carro1 = new Carro('Corolla', motor1);
  Carro carro2 = new Carro('Ferrari', motor2);

  carro1.exibirCarro();
  carro2.exibirCarro();
}
