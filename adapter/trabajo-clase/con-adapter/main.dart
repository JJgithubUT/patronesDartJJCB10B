import 'servicio-pago.dart';
import 'terminal-adapter.dart';
import 'terminal-externa.dart';
import 'tienda.dart';

void main () {
  final tiendaConServicio = Tienda(ServicioPago());

  final tiendaConTerminal = Tienda(TerminalAdapter(TerminalExterna()));
  
  tiendaConServicio.finalizarCompra(158.50); // MXN
  tiendaConTerminal.finalizarCompra(250.50); // USD

  // La tienda finaliza su tarea de finalizar compra
  // mediante la tarea de convertir MXN a USD,
  // pero ahora tenemos dos instancias de tienda.
}