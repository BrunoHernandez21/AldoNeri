// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class AppLocalisations {
  AppLocalisations();

  static AppLocalisations? _current;

  static AppLocalisations get current {
    assert(_current != null,
        'No instance of AppLocalisations was loaded. Try to initialize the AppLocalisations delegate before accessing AppLocalisations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalisations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalisations();
      AppLocalisations._current = instance;

      return instance;
    });
  }

  static AppLocalisations of(BuildContext context) {
    final instance = AppLocalisations.maybeOf(context);
    assert(instance != null,
        'No instance of AppLocalisations present in the widget tree. Did you add AppLocalisations.delegate in localizationsDelegates?');
    return instance!;
  }

  static AppLocalisations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalisations>(context, AppLocalisations);
  }

  /// `Avaluos`
  String get titleApp {
    return Intl.message(
      'Avaluos',
      name: 'titleApp',
      desc: '',
      args: [],
    );
  }

  /// `Accesar`
  String get login {
    return Intl.message(
      'Accesar',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `E-mail`
  String get email {
    return Intl.message(
      'E-mail',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Iniciar sesión`
  String get ingresarTitle {
    return Intl.message(
      'Iniciar sesión',
      name: 'ingresarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Ingresar`
  String get ingresarButton {
    return Intl.message(
      'Ingresar',
      name: 'ingresarButton',
      desc: '',
      args: [],
    );
  }

  /// `Regístrese`
  String get ingresarButtonRegister {
    return Intl.message(
      'Regístrese',
      name: 'ingresarButtonRegister',
      desc: '',
      args: [],
    );
  }

  /// `Recuperar contraseña`
  String get ingresarButtonRecovery {
    return Intl.message(
      'Recuperar contraseña',
      name: 'ingresarButtonRecovery',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese su correo`
  String get recuperarTitle {
    return Intl.message(
      'Ingrese su correo',
      name: 'recuperarTitle',
      desc: '',
      args: [],
    );
  }

  /// `Recuperar contraseña`
  String get recuperarButton {
    return Intl.message(
      'Recuperar contraseña',
      name: 'recuperarButton',
      desc: '',
      args: [],
    );
  }

  /// `Ingrese su correo`
  String get registerTitle {
    return Intl.message(
      'Ingrese su correo',
      name: 'registerTitle',
      desc: '',
      args: [],
    );
  }

  /// `Crear cuenta`
  String get registerButton {
    return Intl.message(
      'Crear cuenta',
      name: 'registerButton',
      desc: '',
      args: [],
    );
  }

  /// `Nombre`
  String get name {
    return Intl.message(
      'Nombre',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Apellido`
  String get surname {
    return Intl.message(
      'Apellido',
      name: 'surname',
      desc: '',
      args: [],
    );
  }

  /// `lastnamne`
  String get lastnamne {
    return Intl.message(
      'lastnamne',
      name: 'lastnamne',
      desc: '',
      args: [],
    );
  }

  /// `middlename`
  String get middlename {
    return Intl.message(
      'middlename',
      name: 'middlename',
      desc: '',
      args: [],
    );
  }

  /// `Numero`
  String get number {
    return Intl.message(
      'Numero',
      name: 'number',
      desc: '',
      args: [],
    );
  }

  /// `Rol`
  String get role {
    return Intl.message(
      'Rol',
      name: 'role',
      desc: '',
      args: [],
    );
  }

  /// `Confirmar Password`
  String get passwordConfirm {
    return Intl.message(
      'Confirmar Password',
      name: 'passwordConfirm',
      desc: '',
      args: [],
    );
  }

  /// `Cerrar Sesión`
  String get cerrarCesionButton {
    return Intl.message(
      'Cerrar Sesión',
      name: 'cerrarCesionButton',
      desc: '',
      args: [],
    );
  }

  /// `Configuración`
  String get configuracionButton {
    return Intl.message(
      'Configuración',
      name: 'configuracionButton',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación: {place}`
  String bodyWhitHubicacion(Object place) {
    return Intl.message(
      'Ubicación: $place',
      name: 'bodyWhitHubicacion',
      desc: '',
      args: [place],
    );
  }

  /// `Fecha: {fullDate}`
  String bodyWhithFechaAvaluo(Object fullDate) {
    return Intl.message(
      'Fecha: $fullDate',
      name: 'bodyWhithFechaAvaluo',
      desc: '',
      args: [fullDate],
    );
  }

  /// `Idioma`
  String get language {
    return Intl.message(
      'Idioma',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `Tema oscuro`
  String get theme {
    return Intl.message(
      'Tema oscuro',
      name: 'theme',
      desc: '',
      args: [],
    );
  }

  /// `Información de usuario`
  String get infoAcount {
    return Intl.message(
      'Información de usuario',
      name: 'infoAcount',
      desc: '',
      args: [],
    );
  }

  /// `Seguimiento`
  String get tracking {
    return Intl.message(
      'Seguimiento',
      name: 'tracking',
      desc: '',
      args: [],
    );
  }

  /// `Uso de datos`
  String get dataUsage {
    return Intl.message(
      'Uso de datos',
      name: 'dataUsage',
      desc: '',
      args: [],
    );
  }

  /// `Información de la aplicación`
  String get infoApp {
    return Intl.message(
      'Información de la aplicación',
      name: 'infoApp',
      desc: '',
      args: [],
    );
  }

  /// `Eliminar usuario`
  String get deletAcount {
    return Intl.message(
      'Eliminar usuario',
      name: 'deletAcount',
      desc: '',
      args: [],
    );
  }

  /// `Fecha`
  String get fecha {
    return Intl.message(
      'Fecha',
      name: 'fecha',
      desc: '',
      args: [],
    );
  }

  /// `Estados`
  String get estados {
    return Intl.message(
      'Estados',
      name: 'estados',
      desc: '',
      args: [],
    );
  }

  /// `Estatus`
  String get estatus {
    return Intl.message(
      'Estatus',
      name: 'estatus',
      desc: '',
      args: [],
    );
  }

  /// `Activo`
  String get activo {
    return Intl.message(
      'Activo',
      name: 'activo',
      desc: '',
      args: [],
    );
  }

  /// `Inactivo`
  String get inactivo {
    return Intl.message(
      'Inactivo',
      name: 'inactivo',
      desc: '',
      args: [],
    );
  }

  /// `Notas`
  String get notas {
    return Intl.message(
      'Notas',
      name: 'notas',
      desc: '',
      args: [],
    );
  }

  /// `Objeto`
  String get objeto {
    return Intl.message(
      'Objeto',
      name: 'objeto',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación`
  String get ubicacion {
    return Intl.message(
      'Ubicación',
      name: 'ubicacion',
      desc: '',
      args: [],
    );
  }

  /// `{time}`
  String bodyhora(Object time) {
    return Intl.message(
      '$time',
      name: 'bodyhora',
      desc: '',
      args: [time],
    );
  }

  /// `Fotos`
  String get fotos {
    return Intl.message(
      'Fotos',
      name: 'fotos',
      desc: '',
      args: [],
    );
  }

  /// `Fotos principales`
  String get fotosPrincipales {
    return Intl.message(
      'Fotos principales',
      name: 'fotosPrincipales',
      desc: '',
      args: [],
    );
  }

  /// `Fotos secundarias`
  String get fotosSecundarias {
    return Intl.message(
      'Fotos secundarias',
      name: 'fotosSecundarias',
      desc: '',
      args: [],
    );
  }

  /// `Duración`
  String get duracion {
    return Intl.message(
      'Duración',
      name: 'duracion',
      desc: '',
      args: [],
    );
  }

  /// `Método de pago`
  String get pago {
    return Intl.message(
      'Método de pago',
      name: 'pago',
      desc: '',
      args: [],
    );
  }

  /// `Codigo de descuento`
  String get descuento {
    return Intl.message(
      'Codigo de descuento',
      name: 'descuento',
      desc: '',
      args: [],
    );
  }

  /// `Costo total`
  String get costo {
    return Intl.message(
      'Costo total',
      name: 'costo',
      desc: '',
      args: [],
    );
  }

  /// `Ejecutar Avalúo`
  String get ejecutarAvaluoButton {
    return Intl.message(
      'Ejecutar Avalúo',
      name: 'ejecutarAvaluoButton',
      desc: '',
      args: [],
    );
  }

  /// `Finalizar Avalúo`
  String get finalizaravaluoButton {
    return Intl.message(
      'Finalizar Avalúo',
      name: 'finalizaravaluoButton',
      desc: '',
      args: [],
    );
  }

  /// `Detalles`
  String get detallesButton {
    return Intl.message(
      'Detalles',
      name: 'detallesButton',
      desc: '',
      args: [],
    );
  }

  /// `Formulario`
  String get formulario {
    return Intl.message(
      'Formulario',
      name: 'formulario',
      desc: '',
      args: [],
    );
  }

  /// `Nuevo objeto`
  String get objetoNew {
    return Intl.message(
      'Nuevo objeto',
      name: 'objetoNew',
      desc: '',
      args: [],
    );
  }

  /// `Persona que lo recibio`
  String get personaRecivio {
    return Intl.message(
      'Persona que lo recibio',
      name: 'personaRecivio',
      desc: '',
      args: [],
    );
  }

  /// `Fecha en la que se realizó`
  String get fechaRealizo {
    return Intl.message(
      'Fecha en la que se realizó',
      name: 'fechaRealizo',
      desc: '',
      args: [],
    );
  }

  /// `Escriba el nonmbre del objeto`
  String get objetoNewNombre {
    return Intl.message(
      'Escriba el nonmbre del objeto',
      name: 'objetoNewNombre',
      desc: '',
      args: [],
    );
  }

  /// `Escriba su nota`
  String get alertNotaNew {
    return Intl.message(
      'Escriba su nota',
      name: 'alertNotaNew',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea eliminar la nota?`
  String get alertDeleteNota {
    return Intl.message(
      '¿Desea eliminar la nota?',
      name: 'alertDeleteNota',
      desc: '',
      args: [],
    );
  }

  /// `No se permiten mas fotos`
  String get alertFotosNoMore {
    return Intl.message(
      'No se permiten mas fotos',
      name: 'alertFotosNoMore',
      desc: '',
      args: [],
    );
  }

  /// `Decea eliminar la foto`
  String get alertFotosDelete {
    return Intl.message(
      'Decea eliminar la foto',
      name: 'alertFotosDelete',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea eliminar el objeto?`
  String get alertDeleteObjeto {
    return Intl.message(
      '¿Desea eliminar el objeto?',
      name: 'alertDeleteObjeto',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea rechazar el avalúo?`
  String get alertAceptarAvaluo {
    return Intl.message(
      '¿Desea rechazar el avalúo?',
      name: 'alertAceptarAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea cancelar el avalúo?`
  String get alertCancelarAvaluo {
    return Intl.message(
      '¿Desea cancelar el avalúo?',
      name: 'alertCancelarAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea aceptar el avalúo?`
  String get alertRechazarAvaluo {
    return Intl.message(
      '¿Desea aceptar el avalúo?',
      name: 'alertRechazarAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `Tomar foto de`
  String get alertFotoCuestion {
    return Intl.message(
      'Tomar foto de',
      name: 'alertFotoCuestion',
      desc: '',
      args: [],
    );
  }

  /// `Contraseña o correo invalido`
  String get alertingresar {
    return Intl.message(
      'Contraseña o correo invalido',
      name: 'alertingresar',
      desc: '',
      args: [],
    );
  }

  /// `¿Desea salir?`
  String get alertCloseSecion {
    return Intl.message(
      '¿Desea salir?',
      name: 'alertCloseSecion',
      desc: '',
      args: [],
    );
  }

  /// `Cámara`
  String get camara {
    return Intl.message(
      'Cámara',
      name: 'camara',
      desc: '',
      args: [],
    );
  }

  /// `Firma`
  String get firma {
    return Intl.message(
      'Firma',
      name: 'firma',
      desc: '',
      args: [],
    );
  }

  /// `Galería`
  String get galeria {
    return Intl.message(
      'Galería',
      name: 'galeria',
      desc: '',
      args: [],
    );
  }

  /// `Cancelar`
  String get cancelar {
    return Intl.message(
      'Cancelar',
      name: 'cancelar',
      desc: '',
      args: [],
    );
  }

  /// `Regresar`
  String get regresar {
    return Intl.message(
      'Regresar',
      name: 'regresar',
      desc: '',
      args: [],
    );
  }

  /// `Reiniciar`
  String get reiniciar {
    return Intl.message(
      'Reiniciar',
      name: 'reiniciar',
      desc: '',
      args: [],
    );
  }

  /// `Aceptar`
  String get aceptar {
    return Intl.message(
      'Aceptar',
      name: 'aceptar',
      desc: '',
      args: [],
    );
  }

  /// `Rechazar`
  String get rechazar {
    return Intl.message(
      'Rechazar',
      name: 'rechazar',
      desc: '',
      args: [],
    );
  }

  /// `Buscar`
  String get buscar {
    return Intl.message(
      'Buscar',
      name: 'buscar',
      desc: '',
      args: [],
    );
  }

  /// `Telefono`
  String get telefono {
    return Intl.message(
      'Telefono',
      name: 'telefono',
      desc: '',
      args: [],
    );
  }

  /// `Celular`
  String get celular {
    return Intl.message(
      'Celular',
      name: 'celular',
      desc: '',
      args: [],
    );
  }

  /// `Guardar`
  String get guardar {
    return Intl.message(
      'Guardar',
      name: 'guardar',
      desc: '',
      args: [],
    );
  }

  /// `Ubicando`
  String get ubicando {
    return Intl.message(
      'Ubicando',
      name: 'ubicando',
      desc: '',
      args: [],
    );
  }

  /// `Ubicación del avalúo`
  String get ubicacionAvaluo {
    return Intl.message(
      'Ubicación del avalúo',
      name: 'ubicacionAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `Empezar Avaluo`
  String get empezarAvaluo {
    return Intl.message(
      'Empezar Avaluo',
      name: 'empezarAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `Encontrando evaluador`
  String get buscandoEvaluador {
    return Intl.message(
      'Encontrando evaluador',
      name: 'buscandoEvaluador',
      desc: '',
      args: [],
    );
  }

  /// `Por favor espere`
  String get pleaseWait {
    return Intl.message(
      'Por favor espere',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `Datos de referencia`
  String get datosReferencia {
    return Intl.message(
      'Datos de referencia',
      name: 'datosReferencia',
      desc: '',
      args: [],
    );
  }

  /// `Nombre del dueño`
  String get nombredelavaluado {
    return Intl.message(
      'Nombre del dueño',
      name: 'nombredelavaluado',
      desc: '',
      args: [],
    );
  }

  /// `Información General`
  String get informacionGeneral {
    return Intl.message(
      'Información General',
      name: 'informacionGeneral',
      desc: '',
      args: [],
    );
  }

  /// `Id de Usuario`
  String get idUsuario {
    return Intl.message(
      'Id de Usuario',
      name: 'idUsuario',
      desc: '',
      args: [],
    );
  }

  /// `Correo Registrado`
  String get correoRegistrado {
    return Intl.message(
      'Correo Registrado',
      name: 'correoRegistrado',
      desc: '',
      args: [],
    );
  }

  /// `Cambiar Contraseña`
  String get cambiarContrasena {
    return Intl.message(
      'Cambiar Contraseña',
      name: 'cambiarContrasena',
      desc: '',
      args: [],
    );
  }

  /// `Nombre del Propietario`
  String get nombrePropietario {
    return Intl.message(
      'Nombre del Propietario',
      name: 'nombrePropietario',
      desc: '',
      args: [],
    );
  }

  /// `Sin tareas`
  String get estaVacio {
    return Intl.message(
      'Sin tareas',
      name: 'estaVacio',
      desc: '',
      args: [],
    );
  }

  /// `Desliza hacia abajo para actualizar`
  String get tocaRecargar {
    return Intl.message(
      'Desliza hacia abajo para actualizar',
      name: 'tocaRecargar',
      desc: '',
      args: [],
    );
  }

  /// `Registro completado con exito`
  String get registroExitoso {
    return Intl.message(
      'Registro completado con exito',
      name: 'registroExitoso',
      desc: '',
      args: [],
    );
  }

  /// `ok`
  String get ok {
    return Intl.message(
      'ok',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `compañia`
  String get compania {
    return Intl.message(
      'compañia',
      name: 'compania',
      desc: '',
      args: [],
    );
  }

  /// `Rol`
  String get rol {
    return Intl.message(
      'Rol',
      name: 'rol',
      desc: '',
      args: [],
    );
  }

  /// `Gender`
  String get gender {
    return Intl.message(
      'Gender',
      name: 'gender',
      desc: '',
      args: [],
    );
  }

  /// `partnert`
  String get partnert {
    return Intl.message(
      'partnert',
      name: 'partnert',
      desc: '',
      args: [],
    );
  }

  /// `owner`
  String get owner {
    return Intl.message(
      'owner',
      name: 'owner',
      desc: '',
      args: [],
    );
  }

  /// `Roles`
  String get roles {
    return Intl.message(
      'Roles',
      name: 'roles',
      desc: '',
      args: [],
    );
  }

  /// `Referencias personales`
  String get referenciasPersonales {
    return Intl.message(
      'Referencias personales',
      name: 'referenciasPersonales',
      desc: '',
      args: [],
    );
  }

  /// `titulo`
  String get titulo {
    return Intl.message(
      'titulo',
      name: 'titulo',
      desc: '',
      args: [],
    );
  }

  /// `Estado de la cuenta`
  String get estadoCuenta {
    return Intl.message(
      'Estado de la cuenta',
      name: 'estadoCuenta',
      desc: '',
      args: [],
    );
  }

  /// `Verificado`
  String get verificado {
    return Intl.message(
      'Verificado',
      name: 'verificado',
      desc: '',
      args: [],
    );
  }

  /// `No verificado`
  String get noVerificado {
    return Intl.message(
      'No verificado',
      name: 'noVerificado',
      desc: '',
      args: [],
    );
  }

  /// `Informacion De La Empresa`
  String get informacionEmpresa {
    return Intl.message(
      'Informacion De La Empresa',
      name: 'informacionEmpresa',
      desc: '',
      args: [],
    );
  }

  /// `Estado`
  String get estado {
    return Intl.message(
      'Estado',
      name: 'estado',
      desc: '',
      args: [],
    );
  }

  /// `Referencias de la Empresa`
  String get referencias {
    return Intl.message(
      'Referencias de la Empresa',
      name: 'referencias',
      desc: '',
      args: [],
    );
  }

  /// `Otros roles`
  String get otrosRoles {
    return Intl.message(
      'Otros roles',
      name: 'otrosRoles',
      desc: '',
      args: [],
    );
  }

  /// `Referencias Profesionales`
  String get referenciasProfesionales {
    return Intl.message(
      'Referencias Profesionales',
      name: 'referenciasProfesionales',
      desc: '',
      args: [],
    );
  }

  /// `Bucar avalúo`
  String get bucarAvaluo {
    return Intl.message(
      'Bucar avalúo',
      name: 'bucarAvaluo',
      desc: '',
      args: [],
    );
  }

  /// `Decea eliminar`
  String get deceaEliminar {
    return Intl.message(
      'Decea eliminar',
      name: 'deceaEliminar',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `Geolocation`
  String get geolocation {
    return Intl.message(
      'Geolocation',
      name: 'geolocation',
      desc: '',
      args: [],
    );
  }

  /// `Rfc`
  String get rfc {
    return Intl.message(
      'Rfc',
      name: 'rfc',
      desc: '',
      args: [],
    );
  }

  /// `Curp`
  String get curp {
    return Intl.message(
      'Curp',
      name: 'curp',
      desc: '',
      args: [],
    );
  }

  /// `Birthdate`
  String get birthdate {
    return Intl.message(
      'Birthdate',
      name: 'birthdate',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Address Component`
  String get addressComponent {
    return Intl.message(
      'Address Component',
      name: 'addressComponent',
      desc: '',
      args: [],
    );
  }

  /// `Zona Horaria`
  String get zonaHoraria {
    return Intl.message(
      'Zona Horaria',
      name: 'zonaHoraria',
      desc: '',
      args: [],
    );
  }

  /// `Informacion Personal`
  String get informacionPersonal {
    return Intl.message(
      'Informacion Personal',
      name: 'informacionPersonal',
      desc: '',
      args: [],
    );
  }

  /// `Extra`
  String get extra {
    return Intl.message(
      'Extra',
      name: 'extra',
      desc: '',
      args: [],
    );
  }

  /// `Contacto`
  String get contacto {
    return Intl.message(
      'Contacto',
      name: 'contacto',
      desc: '',
      args: [],
    );
  }

  /// `No se tienen las coordenadas`
  String get sinGeo {
    return Intl.message(
      'No se tienen las coordenadas',
      name: 'sinGeo',
      desc: '',
      args: [],
    );
  }

  /// `No se pudieron obtener las coordenadas`
  String get geoError {
    return Intl.message(
      'No se pudieron obtener las coordenadas',
      name: 'geoError',
      desc: '',
      args: [],
    );
  }

  /// `no hay un numero registrado`
  String get numSinRegistro {
    return Intl.message(
      'no hay un numero registrado',
      name: 'numSinRegistro',
      desc: '',
      args: [],
    );
  }

  /// `Error de sincronizacion`
  String get sincError {
    return Intl.message(
      'Error de sincronizacion',
      name: 'sincError',
      desc: '',
      args: [],
    );
  }

  /// `Sincronizando`
  String get sinc {
    return Intl.message(
      'Sincronizando',
      name: 'sinc',
      desc: '',
      args: [],
    );
  }

  /// `Conectando con el servidor`
  String get conectandoServidor {
    return Intl.message(
      'Conectando con el servidor',
      name: 'conectandoServidor',
      desc: '',
      args: [],
    );
  }

  /// `Todas las entradas son requeridas`
  String get entradasRequeridas {
    return Intl.message(
      'Todas las entradas son requeridas',
      name: 'entradasRequeridas',
      desc: '',
      args: [],
    );
  }

  /// `Tienes datos sin guardar deseas continuar`
  String get datosSinGuardar {
    return Intl.message(
      'Tienes datos sin guardar deseas continuar',
      name: 'datosSinGuardar',
      desc: '',
      args: [],
    );
  }

  /// `El avlauo se ha cancelado`
  String get titleCancel {
    return Intl.message(
      'El avlauo se ha cancelado',
      name: 'titleCancel',
      desc: '',
      args: [],
    );
  }

  /// `Borrador`
  String get borrador {
    return Intl.message(
      'Borrador',
      name: 'borrador',
      desc: '',
      args: [],
    );
  }

  /// `Proceso`
  String get proceso {
    return Intl.message(
      'Proceso',
      name: 'proceso',
      desc: '',
      args: [],
    );
  }

  /// `Sin asignar`
  String get sin_asignar {
    return Intl.message(
      'Sin asignar',
      name: 'sin_asignar',
      desc: '',
      args: [],
    );
  }

  /// `cancelado`
  String get cancelado {
    return Intl.message(
      'cancelado',
      name: 'cancelado',
      desc: '',
      args: [],
    );
  }

  /// `Asignado`
  String get asignado {
    return Intl.message(
      'Asignado',
      name: 'asignado',
      desc: '',
      args: [],
    );
  }

  /// `Terminada`
  String get terminada {
    return Intl.message(
      'Terminada',
      name: 'terminada',
      desc: '',
      args: [],
    );
  }

  /// `Aprobando`
  String get aprobando {
    return Intl.message(
      'Aprobando',
      name: 'aprobando',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalisations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<AppLocalisations> load(Locale locale) => AppLocalisations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
