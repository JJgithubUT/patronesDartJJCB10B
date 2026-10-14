import 'agenda.dart';

void main () {
  final Agenda _agenda = Agenda();
  _agenda.publicarTarea("Estudiar patrones de diseño");
}

// Sin observer la agenda termina encargandose de todo:
// publicar tareas, coordinar componentes de otro tipo, etc.