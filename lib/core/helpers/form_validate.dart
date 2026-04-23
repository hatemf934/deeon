import 'package:deeon/core/utils/text_validate_manager.dart';

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

  String? validateEmail(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextValidateManager.invalidEmailOrPassword;
    }
    if (!emailRegExp.hasMatch(value.trim())) {
      return TextValidateManager.invalidEmailOrPassword;
    }

    return null;
  }

  String? validateFullName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextValidateManager.invalidFullName;
    }

    if (!fullNameRegExp.hasMatch(value.trim())) {
      return TextValidateManager.invalidFullName;
    }

    return null;
  }

  String? validatePassword(String? value) {
    if (value == null || value.trim().isEmpty) {
      return TextValidateManager.invalidEmailOrPassword;
    }

    if (!passwordLeastLowerCaseLetter.hasMatch(value)) {
      return TextValidateManager.passwordFromAtoZ;
    }

    if (!passwordLeastOneCharacter.hasMatch(value)) {
      return TextValidateManager.passwordSpicailCharacter;
    }

    if (!passwordLeastDigit.hasMatch(value)) {
      return TextValidateManager.passwordLeastNumber;
    }

    if (!passwordLeastEightNumber.hasMatch(value)) {
      return TextValidateManager.passwordLeastAt8Number;
    }

    return null;
  }

  String? validateConfirmPassword(String? value, String originalPassword) {
    if (value == null || value.trim().isEmpty) {
      return TextValidateManager.invalidEmailOrPassword;
    }

    if (value != originalPassword) {
      return TextValidateManager.passwordsNotMatch;
    }

    return null;
  }
}
