
import 'sensor-celsius.dart';
import 'sensor-fahrenheit.dart';

class AdaptadorTemperatura implements SensorCelsius {
  final SensorFahrenheit sensor;

  AdaptadorTemperatura(this.sensor);

  @override
  double obtenerTemperaturaCelsius() {
    final fahrenheit = sensor.obtenerTemperatura();

    return (fahrenheit - 32) * 5 / 9;
  }
}
