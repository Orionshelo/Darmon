class Categoria {
  int id;
  String nombre;
  String foto;

  Categoria(this.id, this.nombre, this.foto);
}

final Menu = [
  Categoria(1, "Estadísticas del Club", "stats.png"),
  Categoria(2, "Asistencia", "attendance.png"),
  Categoria(3, "Membresías", "payments.png"),
  Categoria(4, "Eventos", "events.png"),
];
