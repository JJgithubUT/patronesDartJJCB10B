// Simulación servicio de pagos en pesos sin utilizar un adapter.
import 'medio-pago.dart';

class ServicioPago implements MedioPago {
  @override
  void procesarPago(double montoPesos) {
    print('Servicio Pago: Procesando pago de \$${montoPesos.toStringAsFixed(2)} en MXN');
  }
}