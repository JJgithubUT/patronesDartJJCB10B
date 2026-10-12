// Simulación servicio de pagos en pesos sin utilizar un adapter.
class ServicioPago {
  void procesarPago(double montoPesos) {
    print('Servicio Pago: Procesando pago de \$${montoPesos.toStringAsFixed(2)} en MXN');
  }
}