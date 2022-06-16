import 'dart:convert';

import 'comentario.dart';

//////////////////////////////////////// Conversacion
class ConversacionM {
  ConversacionM({
    this.id,
    this.nombre,
    this.fecha,
    this.courseId,
    this.megusta,
    this.comentarios,
    this.contenido,
    this.foto,
  });

  String? id;
  String? nombre;
  String? foto;
  String? fecha;
  String? courseId;
  int? megusta;
  String? contenido;
  List<Comentario>? comentarios;

  ConversacionM copyWith({
    String? id,
    String? nombre,
    String? fecha,
    String? courseId,
    int? megusta,
    String? contenido,
    List<Comentario>? comentarios,
    String? foto,
  }) =>
      ConversacionM(
        id: id ?? this.id,
        nombre: nombre ?? this.nombre,
        fecha: fecha ?? this.fecha,
        courseId: courseId ?? this.courseId,
        megusta: megusta ?? this.megusta,
        contenido: contenido ?? this.contenido,
        comentarios: comentarios ?? this.comentarios,
        foto: foto ?? this.foto,
      );

  factory ConversacionM.fromJson(String str) =>
      ConversacionM.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ConversacionM.fromMap(Map<String, dynamic> json) => ConversacionM(
        id: json["id"],
        nombre: json["nombre"],
        fecha: json["fecha"],
        courseId: json["course_id"],
        megusta: json["megusta"],
        contenido: json["contenido"],
        comentarios: List<Comentario>.from(
          json["comentarios"].map(
            (x) => Comentario.fromMap(x),
          ),
        ),
        foto: json["foto"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nombre": nombre,
        "fecha": fecha,
        "course_id": courseId,
        "courseId": courseId,
        "megusta": megusta,
        "contenido": contenido,
        "comentarios": List<dynamic>.from(
          comentarios?.map((x) => x.toMap()) ?? [],
        ),
        "foto": foto,
      };
}
