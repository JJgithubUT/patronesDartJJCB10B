
import 'sensor-fahrenheit.dart';

void main() {
  final sensor = SensorFahrenheit();

  // Recibe la temperatura en Fahrenheit.
  final fahrenheit = sensor.obtenerTemperatura();

  // Fórmula de conversión.
  final celsius = (fahrenheit - 32) * 5 / 9;

  print('Temperatura en Fahrenheit: $fahrenheit °F');
  print('Temperatura en Celsius: ${celsius.toStringAsFixed(1)} °C');

  // ¿Cuál es el problema?
  // El código cliente está acoplado al sensor y a su unidad de medida.
  // Si después incorporamos otro sensor que devuelva Kelvin,
  // tendríamos que modificar el código cliente para implementar una conversión diferente.
}
