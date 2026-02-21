import 'package:deeon/core/utils/text_validate_manager.dart';

class FormValidate {
  final RegExp passwordLeastLowerCaseLetter = RegExp(
    TextValidateManager.passwordLeastLowerCaseLetter,
  );
  final RegExp passwordLeastDigit = RegExp(
    TextValidateManager.passwordLeastDigit,
  );
  final RegExp passwordLeastOneCharacter = RegExp(
    TextValidateManager.passwordLeastOneCharacter,
  );
  final RegExp passwordLeastEightNumber = RegExp(
    TextValidateManager.passwordLeastEightNumber,
  );
  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return TextValidateManager.fieldIsRequired;
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
}
