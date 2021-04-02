// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUpViewModel on _SignUpViewModelBase, Store {
  final _$descriptionAtom = Atom(name: '_SignUpViewModelBase.description');

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

  final _$formAutoValidateAtom =
      Atom(name: '_SignUpViewModelBase.formAutoValidate');

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

  final _$_SignUpViewModelBaseActionController =
      ActionController(name: '_SignUpViewModelBase');

  @override
  bool checkSignUpForm() {
    final _$actionInfo = _$_SignUpViewModelBaseActionController.startAction(
        name: '_SignUpViewModelBase.checkSignUpForm');
    try {
      return super.checkSignUpForm();
    } finally {
      _$_SignUpViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
description: ${description},
formAutoValidate: ${formAutoValidate}
    ''';
  }
}
