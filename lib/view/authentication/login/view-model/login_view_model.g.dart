// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LoginViewModel on _LoginViewModelBase, Store {
  final _$formAutoValidateAtom =
      Atom(name: '_LoginViewModelBase.formAutoValidate');

  @override
  bool get formAutoValidate {
    _$formAutoValidateAtom.reportRead();
    return super.formAutoValidate;
  }

  @override
  set formAutoValidate(bool value) {
    _$formAutoValidateAtom.reportWrite(value, super.formAutoValidate, () {
      super.formAutoValidate = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_LoginViewModelBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$_LoginViewModelBaseActionController =
      ActionController(name: '_LoginViewModelBase');

  @override
  bool checkSignUpForm() {
    final _$actionInfo = _$_LoginViewModelBaseActionController.startAction(
        name: '_LoginViewModelBase.checkSignUpForm');
    try {
      return super.checkSignUpForm();
    } finally {
      _$_LoginViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
formAutoValidate: ${formAutoValidate},
description: ${description}
    ''';
  }
}
