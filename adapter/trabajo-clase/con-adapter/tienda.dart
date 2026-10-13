// Simulación de una tienda que utiliza diferentes servicios de pago
import 'medio-pago.dart';
//import 'terminal-adapter.dart';

class Tienda {

  final MedioPago medioPago;

  Tienda(this.medioPago);

  // Aquí debo de poder procesar la compra
  // cobrar, actualizar inventarios, generar proceso de envío
  void finalizarCompra(double total) {
    medioPago.procesarPago(total);
  }
}
