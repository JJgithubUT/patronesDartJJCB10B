import 'servicio-pago.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main () {
  final tienda = Tienda(ServicioPago(), TerminalExterna());
  

  tienda.finalizarCompra(100, 'servicioPago');
  tienda.finalizarCompra(100, 'terminalExterna');

  // La tienda finaliza su tarea de finalizar compra
  // mediante la tarea de convertir MXN a USD, no es ideal
}