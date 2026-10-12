// Simulación de una tienda que utiliza diferentes servicios de pago
import 'servicio-pago.dart';
import 'terminal-externa.dart';

class Tienda {
  final ServicioPago servicioPago;
    final TerminalExterna terminalExterna;

    Tienda(this.servicioPago, this.terminalExterna);

    void finalizarCompra(double total, String medio) {
      if (medio == 'servicioPago') {
        servicioPago.procesarPago(total);
      } else if (medio == 'terminalExterna') {
        // La tienda debe convertir MXN a USD previo a llamar al servicio
        final totalDolares = total / 18.25; // Suponiendo el valor actual (1 USD -> aprox -> 18.25 MXN)
        terminalExterna.procesarPagoEnDolares(totalDolares);
      } else {
        throw Exception('Medio de pago no soportado: $medio');
      }
    }
}