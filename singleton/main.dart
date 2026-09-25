import 'configuracion.dart';

void main() {
  var pantallaInicio = Configuracion("es");
  var pantallaPerfil = Configuracion("es");

  print("Idioma de la pantalla de Inicio: ${pantallaInicio.idioma}");
  print("Idioma de la pantalla de Perfil: ${pantallaPerfil.idioma}");

  pantallaInicio.idioma = "en";
  print("Idioma de la pantalla de Inicio: ${pantallaInicio.idioma}");
  print("Idioma de la pantalla de Perfil: ${pantallaPerfil.idioma}");

  // Comprobar si son instancias iguales
  print(identical(pantallaInicio, pantallaPerfil)); // false
}