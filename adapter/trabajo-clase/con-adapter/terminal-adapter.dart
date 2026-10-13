// Adapter: Traducir la interfaz y los datos
import 'terminal-externa.dart';
import 'medio-pago.dart';

class TerminalAdapter implements MedioPago {
  final TerminalExterna terminal;
  TerminalAdapter(this.terminal);
  
  @override
  void procesarPago(double montoPesos) {
    final totalDolares = montoPesos / 18.25;
    terminal.procesarPagoEnDolares(totalDolares);
  }
}