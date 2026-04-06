import 'semaforo.dart';

// Simula semáforo por 25 ciclos
void main() {
  Semaforo semaforo = Semaforo('vermelho');

  for (int i = 0; i < 25; i++) {
    semaforo.exibirEstado();
    semaforo.reduzirTempo();
  }
  semaforo.exibirEstado();
}
