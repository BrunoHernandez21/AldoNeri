import 'dart:convert';

class UsuarioPrivate {
  UsuarioPrivate({
    this.ok = false,
    required this.usuario,
    this.token = '',
  });
  bool ok;
  Usuario usuario;
  String token;

  UsuarioPrivate copyWith({
    bool? ok,
    Usuario? usuario,
    String? token,
  }) =>
      UsuarioPrivate(
        ok: ok ?? this.ok,
        usuario: usuario ?? this.usuario,
        token: token ?? this.token,
      );

  factory UsuarioPrivate.fromJson(String str) =>
      UsuarioPrivate.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UsuarioPrivate.fromMap(Map<String, dynamic> json) => UsuarioPrivate(
        ok: json["ok"],
        usuario: Usuario.fromMap(json["user"] ?? {}),
        token: json["token"],
      );

  Map<String, dynamic> toMap() => {
        "user": usuario.toMap(),
        "token": token,
        "ok": ok,
      };
}

class Usuario {
  Usuario({
    this.id = '',
    this.email,
    this.password,
    this.role,
    this.roles,
    this.verify,
    this.estatus,
    this.name,
    this.lastname,
    this.surname,
    this.middlename,
    this.country,
    this.geolocation,
    this.rfc,
    this.curp,
    this.birthdate,
    this.language,
    this.phone,
    this.celular,
    this.about,
    this.gender,
    this.title,
    this.company,
    this.address,
    this.addressComponents,
    this.zonaHoraria,
    this.urlMaps,
    this.numeroCliente,
    this.numeroVendedor,
    this.personalReferences,
    this.partner,
    this.owner,
    this.created,
    this.updated,
  });
  String? id;
  String? email;
  String? password;
  String? role;
  List<String>? roles;
  bool? verify;
  bool? estatus;
  //info fields
  String? name;
  String? lastname;
  String? surname;
  String? middlename;
  String? country;
  String? geolocation;
  String? rfc;
  String? curp;
  String? birthdate;
  String? language;
  String? phone;
  String? celular;
  String? about;
  String? gender;
  String? title;
  String? company;
  String? address;
  String? addressComponents;
  double? zonaHoraria;
  String? urlMaps;
  String? numeroCliente;
  String? numeroVendedor;
  List<String>? personalReferences;
  // control fields
  String? partner;
  String? owner;
  String? created;
  String? updated;

  Usuario copyWith({
    String? id,
    String? email,
    String? password,
    String? role,
    List<String>? roles,
    bool? verify,
    bool? estatus,
    //info fields
    String? name,
    String? lastname,
    String? surname,
    String? middlename,
    String? country,
    String? geolocation,
    String? rfc,
    String? curp,
    String? birthdate,
    String? language,
    String? phone,
    String? celular,
    String? about,
    String? gender,
    String? title,
    String? company,
    String? address,
    String? addressComponents,
    double? zonaHoraria,
    String? urlMaps,
    String? numeroCliente,
    String? numeroVendedor,
    List<String>? personalReferences,
    // control fields
    String? partner,
    String? owner,
    String? created,
    String? updated,
  }) =>
      Usuario(
        id: id ?? this.id,
        email: email ?? this.email,
        password: password ?? this.password,
        role: role ?? this.role,
        roles: roles ?? this.roles,
        verify: verify ?? this.verify,
        estatus: estatus ?? this.estatus,
        name: name ?? this.name,
        lastname: lastname ?? this.lastname,
        surname: surname ?? this.surname,
        middlename: middlename ?? this.middlename,
        country: country ?? this.country,
        geolocation: geolocation ?? this.geolocation,
        rfc: rfc ?? this.rfc,
        curp: curp ?? this.curp,
        birthdate: birthdate ?? this.birthdate,
        language: language ?? this.language,
        phone: phone ?? this.phone,
        celular: celular ?? this.celular,
        about: about ?? this.about,
        gender: gender ?? this.gender,
        title: title ?? this.title,
        company: company ?? this.company,
        address: address ?? this.address,
        addressComponents: addressComponents ?? this.addressComponents,
        zonaHoraria: zonaHoraria ?? this.zonaHoraria,
        urlMaps: urlMaps ?? this.urlMaps,
        numeroCliente: numeroCliente ?? this.numeroCliente,
        numeroVendedor: numeroVendedor ?? this.numeroVendedor,
        personalReferences: personalReferences ?? this.personalReferences,
        partner: partner ?? this.partner,
        owner: owner ?? this.owner,
        created: created ?? this.created,
        updated: updated ?? this.updated,
      );

  factory Usuario.fromJson(String str) => Usuario.fromMap(json.decode(str));
  String toJson() => json.encode(toMap());

  factory Usuario.fromMap(Map<String, dynamic> json) => Usuario(
        id: json["_id"],
        email: json["email"],
        password: json["password"],
        role: json["role"],
        roles: (json["roles"]?.isEmpty ?? true) ? <String>[] : json["roles"],
        verify: json["verify"],
        estatus: json["estatus"],
        name: json["name"],
        lastname: json["lastname"],
        surname: json["surname"],
        middlename: json["middlename"],
        country: json["country"],
        geolocation: json["geolocation"],
        rfc: json["rfc"],
        curp: json["curp"],
        birthdate: json["birthdate"],
        language: json["language"],
        phone: json["phone"],
        celular: json["celular"],
        about: json["about"],
        gender: json["gender"],
        title: json["title"],
        company: json["company"],
        address: json["address"],
        addressComponents: json["address_components"],
        zonaHoraria: json["zonaHoraria"],
        urlMaps: json["urlMaps"],
        numeroCliente: json["numeroCliente"],
        numeroVendedor: json["numeroVendedor"],
        personalReferences: (json["personalReferences"]?.isEmpty ?? true)
            ? <String>[]
            : json["personalReferences"],
        partner: json["partner"],
        owner: json["owner"],
        created: json["created"],
        updated: json["updated"],
      );

  Map<String, dynamic> toMap() => {
        "_id": id,
        "email": email,
        "password": password,
        "role": role,
        "roles": roles,
        "verify": verify,
        "estatus": estatus,
        "name": name,
        "lastname": lastname,
        "surname": surname,
        "middlename": middlename,
        "country": country,
        "geolocation": geolocation,
        "rfc": rfc,
        "curp": curp,
        "birthdate": birthdate,
        "language": language,
        "phone": phone,
        "celular": celular,
        "about": about,
        "gender": gender,
        "title": title,
        "company": company,
        "address": address,
        "address_components": addressComponents,
        "zonaHoraria": zonaHoraria,
        "urlMaps": urlMaps,
        "numeroCliente": numeroCliente,
        "numeroVendedor": numeroVendedor,
        "personalReferences": personalReferences,
        "partner": partner,
        "owner": owner,
        "created": created,
        "updated": updated,
      };
}
