import 'dart:convert';

/////////////////////////////////// Comentario
class Comentario {
  Comentario({
    this.id,
    this.nombre,
    this.fecha,
    this.conversacionId,
    this.megusta,
    this.comentarios,
    this.contenido,
    this.foto,
  });

  String? id;
  String? nombre;
  String? foto;
  String? fecha;
  String? conversacionId;
  int? megusta;
  String? contenido;
  String? comentarios;

  Comentario copyWith({
    String? id,
    String? nombre,
    String? fecha,
    String? conversacionId,
    int? megusta,
    String? contenido,
    String? comentarios,
    String? foto,
  }) =>
      Comentario(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        fecha: fecha ?? this.fecha,
        conversacionId: conversacionId ?? this.conversacionId,
        megusta: megusta ?? this.megusta,
        contenido: contenido ?? this.contenido,
        comentarios: comentarios ?? this.comentarios,
        foto: foto ?? this.foto,
      );

  factory Comentario.fromJson(String str) =>
      Comentario.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Comentario.fromMap(Map<String, dynamic> json) => Comentario(
        id: json["id"],
        nombre: json["nombre"],
        fecha: json["fecha"],
        conversacionId: json["course_id"],
        megusta: json["megusta"],
        contenido: json["contenido"],
        comentarios: json["comentarios"],
        foto: json["foto"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nombre": nombre,
        "fecha": fecha,
        "courseId": conversacionId,
        "megusta": megusta,
        "contenido": contenido,
        "comentarios": comentarios,
        "foto": foto,
      };
}
