part of 'acount_bloc.dart';

@immutable
class AcountState {
  final UsuarioPrivate acount;
  final bool isLogin;
  final bool editable;
  const AcountState({
    required this.acount,
    required this.isLogin,
    this.editable = false,
  });

  AcountState copyWith({
    UsuarioPrivate? acount,
    bool? isLogin,
    bool? editable,
  }) =>
      AcountState(
        acount: acount ?? this.acount,
        isLogin: isLogin ?? this.isLogin,
        editable: editable ?? this.editable,
      );
}
