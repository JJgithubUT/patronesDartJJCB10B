import 'sensor-celsius.dart';
import 'sensor-fahrenheit.dart';
import 'adaptador-temperatura.dart';

void main() {
  final sensorFahrenheit = SensorFahrenheit();

  // Adaptador que convierte la temperatura de Fahrenheit a Celsius.
  // Se conectan ambas interfaces a través del adaptador.
  final SensorCelsius sensor =
      AdaptadorTemperatura(sensorFahrenheit);

  // Solamente se conoce la interfaz Celsius.
  final temperatura = sensor.obtenerTemperaturaCelsius();

  print(
    'Temperatura en Celsius: '
    '${temperatura.toStringAsFixed(1)} °C',
  );
}
