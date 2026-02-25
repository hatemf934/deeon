import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/calender_text_feild.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListTextFeildCustomer extends StatelessWidget {
  const ListTextFeildCustomer({
    super.key,
    required this.onChangedName,
    required this.onChangedPhone,
    required this.onChangedDate,
  });
  final Function(String) onChangedName;
  final Function(String) onChangedPhone;
  final Function(String) onChangedDate;
  @override
  Widget build(BuildContext context) {
    final RegExp nameRegExp = RegExp(TextValidateManager.fullNameRegExp);
    final RegExp phoneRegExp = RegExp(TextValidateManager.phoneFormat);
    return Column(
      children: [
        TextFeildCustomer(
          onChanged: onChangedName,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return TextValidateManager.fieldIsRequired;
            } else if (!nameRegExp.hasMatch(value.trim())) {
              return TextValidateManager.invalidFullName;
            }
            return null;
          },
          labelText: TextManger.customerNameLabel,
          hintText: TextManger.customerNameHint,
        ),
        SizedBox(height: HeightManager.h15),
        TextFeildCustomer(
          onChanged: onChangedPhone,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return TextValidateManager.requiredPhone;
            }
            if (!phoneRegExp.hasMatch(value)) {
              return TextValidateManager.invalidPhoneFormat;
            }
            if (value.length < 11) {
              return TextValidateManager.phoneTooShort;
            }
            return null;
          },
          labelText: TextManger.customerPhoneLabel,
          hintText: TextManger.customerPhoneHint,

          keyboardType: TextInputType.phone,
        ),
        SizedBox(height: HeightManager.h15),
        CalenderTextFeild(onChangedDate: onChangedDate),
      ],
    );
  }
}
