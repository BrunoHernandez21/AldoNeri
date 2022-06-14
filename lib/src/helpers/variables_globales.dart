// ignore_for_file: non_constant_identifier_names

import 'package:aldo_neri/src/models/curso.dart';
import 'package:flutter/cupertino.dart';

class Colores {
  static const Color background = Color(0xFDFDFDFF);
}

class FontsFamily {
  static const String roboto = "Roboto";
  static const String montserrat = "Montserrat";
  static const String merriweather = "Merriweather";
}

class Variables {
  /*Direcciones internas de almacenamiento */
  static const String repoImage = "repoImage";
  /*Direccion de la app*/
  static const baseUrl = "https://srv.grupodime.com.mx/api/";

  static const googleKey = "AIzaSyC8JmD8bqNROOddjeIlWX0uOYCnqNPC_0o";

  static const String baseTarea = baseUrl + "tarea/";
  static const String baseClud = baseUrl + "archives/";
  static const String baseImage = baseUrl + "archives/usuarios/";
  static const String baseSearch = baseUrl + "tarea/list/1/10";
  static const String baseTipos = baseUrl + "tareas/types";
  static const String baseTypeName = baseUrl + "tareas/typenamed/";
}

class Assets {
  static const String rootpage = "assets/background/root_page.jpg";
  static const String bubbles = "assets/background/bubbles.png";

  static const String logo = "assets/logo/logo.png";
  static const String logo2 = "assets/logo/logo2.png";

  static const String svgGoogle = 'assets/svg/logos/google.svg';
  static const String svgFacebook = 'assets/svg/logos/facebook.svg';
}

class Medidas {
  static Size size = const Size(0, 0);
}

class URL {
  static const String base = "https://cursos.grupodime.com.mx/api/";
}

class BaseDeDatos {
  static const loginResponse = "loginResponse";
}

class Pruebas {
  static final List<CursoModel> cartelera = [
    CursoModel(
        title: "Curso de cajas",
        description:
            "Curos de perritos donde los gatitos seran felices, el tratamiento de los gatitos para su salud y posible productividad en el campo",
        categoryId: "",
        thumbnail:
            "https://www.embalajesterra.com/blog/wp-content/uploads/2017/10/cajas-carton-corruuado-embalaje.jpg",
        sections: [
          Section(title: "Introduccion", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Desarrollo", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Fin", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
        ]),
    CursoModel(
        title: "Curso de gatitos",
        description:
            "Curos de cajas, su manejo, posturas para su manipulacion, ademas de herramientas o aditamentos necesarios para no pejudicar la salud personal durante su manipulacion",
        categoryId: "",
        thumbnail:
            "https://sumedico.blob.core.windows.net/images/2020/03/17/cuidadosgatobebe_2-focus-min0.07-0.45-640-384.jpg",
        sections: [
          Section(title: "Introduccion", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Desarrollo", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Fin", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
        ]),
    CursoModel(
        title: "Curso de perritos",
        description:
            "Curos de perritos donde los perritos seran felices, el tratamiento de los perritos para su salud y posible productividad en el campo",
        categoryId: "",
        thumbnail:
            "https://live.hsmob.io/storage/images/wakyma.com/wakyma.com_consejos-basicos-para-saber-como-entrenar-a-un-perro.jpg",
        sections: [
          Section(title: "Introduccion", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Desarrollo", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
          Section(title: "Fin", lessons: [
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
            Lesson(title: "asdasd"),
          ]),
        ]),
  ];
}
