import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/shaderPreferences/shaderpreferences_bloc.dart';

class InputsText {
  static Widget classic({
    TextEditingController? controller,
    TextInputType textType = TextInputType.text,
    String hintText = "",
    bool obscure = false,
    bool editable = true,
    Widget? icon,
    void Function(String)? onChanged,
  }) {
    return _InputText(
      controller: controller,
      hintText: hintText,
      editable: editable,
      icon: icon,
      obscure: obscure,
      onChanged: onChanged,
      textType: textType,
    );
  }
}

class _InputText extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType textType;
  final String hintText;
  final bool obscure;
  final bool editable;
  final Widget? icon;
  final void Function(String)? onChanged;

  const _InputText({
    this.controller,
    required this.hintText,
    this.textType = TextInputType.text,
    this.icon,
    this.obscure = false,
    this.editable = true,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    final theme =
        BlocProvider.of<ShaderpreferencesBloc>(context).state.themeData;
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: theme.cardColor,
        borderRadius: BorderRadius.circular(50),
      ),
      child: TextField(
        enabled: editable,
        obscureText: obscure,
        controller: controller,
        keyboardType: textType,
        decoration: InputDecoration(hintText: hintText, icon: icon),
        autofocus: false,
        onChanged: onChanged,
      ),
    );
  }
}
