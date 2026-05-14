import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class FormValidate {
  final RegExp passwordLeastLowerCaseLetter = RegExp(
    TextValidateManager.passwordLeastLowerCaseLetter,
  );
  final RegExp emailRegExp = RegExp(TextValidateManager.emailRegExp);
  final RegExp fullNameRegExp = RegExp(TextValidateManager.fullNameRegExp);
  final RegExp passwordLeastDigit = RegExp(
    TextValidateManager.passwordLeastDigit,
  );
  final RegExp passwordLeastOneCharacter = RegExp(
    TextValidateManager.passwordLeastOneCharacter,
  );
  final RegExp passwordLeastEightNumber = RegExp(
    TextValidateManager.passwordLeastEightNumber,
  );
  final RegExp phoneRegExp = RegExp(TextValidateManager.phoneFormat);

  String? validateEmail(String? value, BuildContext context) {
    if (value == null || value.trim().isEmpty) {
      return S.of(context).invalidEmailOrPassword;
    }
    if (!emailRegExp.hasMatch(value.trim())) {
      return S.of(context).invalidEmailOrPassword;
    }

    return null;
  }

  String? validateFullName(String? value, BuildContext context) {
    if (value == null || value.trim().isEmpty) {
      return S.of(context).invalidFullName;
    }

    if (!fullNameRegExp.hasMatch(value.trim())) {
      return S.of(context).invalidFullName;
    }

    return null;
  }

  String? validatePassword(String? value, BuildContext context) {
    if (value == null || value.trim().isEmpty) {
      return S.of(context).invalidEmailOrPassword;
    }

    if (!passwordLeastLowerCaseLetter.hasMatch(value)) {
      return S.of(context).passwordFromAtoZ;
    }

    if (!passwordLeastOneCharacter.hasMatch(value)) {
      return S.of(context).passwordSpicailCharacter;
    }

    if (!passwordLeastDigit.hasMatch(value)) {
      return S.of(context).passwordLeastNumber;
    }

    if (!passwordLeastEightNumber.hasMatch(value)) {
      return S.of(context).passwordLeastAt8Number;
    }

    return null;
  }

  String? validateConfirmPassword(
    String? value,
    String originalPassword,
    BuildContext context,
  ) {
    if (value == null || value.trim().isEmpty) {
      return S.of(context).invalidEmailOrPassword;
    }

    if (value != originalPassword) {
      return S.of(context).passwordsNotMatch;
    }

    return null;
  }

  String? validatePhone(String? value, BuildContext context) {
    if (value == null || value.trim().isEmpty) {
      return S.of(context).requiredPhone;
    }

    final trimmedValue = value.trim();

    if (!phoneRegExp.hasMatch(trimmedValue)) {
      return S.of(context).invalidPhoneFormat;
    }

    if (trimmedValue.length < 11) {
      return S.of(context).phoneTooShort;
    }

    return null;
  }

  String? validateEnterNumber(String? value, BuildContext context) {
    {
      if (value == null || value.isEmpty) {
        return S.of(context).fieldIsRequired;
      }
      if (double.tryParse(value) == null) {
        return S.of(context).pleaseEnterNumber;
      }
      return null;
    }
  }
}
