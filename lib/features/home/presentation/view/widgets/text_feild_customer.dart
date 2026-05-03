import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class TextFeildCustomer extends StatelessWidget {
  const TextFeildCustomer({
    super.key,
    required this.labelText,
    required this.hintText,
    this.suffixIcon,
    required this.validator,
    this.keyboardType,
    this.readOnly = false,
    this.controller,
    this.onTap,
  });
  final String labelText;
  final String hintText;
  final Widget? suffixIcon;
  final String? Function(String?) validator;
  final TextInputType? keyboardType;
  final bool readOnly;
  final TextEditingController? controller;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textSelectionTheme: TextSelectionThemeData(
          selectionColor: ColorManager.primaryColor.withOpacity(0.4),
          selectionHandleColor: ColorManager.primaryColor,
        ),
      ),
      child: TextFormField(
        onTap: onTap,
        controller: controller,
        readOnly: readOnly,
        style: TextStyle(color: ColorManager.blackColor),
        cursorColor: ColorManager.primaryColor,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        keyboardType: keyboardType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(color: ColorManager.hintColor),
          labelStyle: TextStyle(
            color: ColorManager.primaryColor,
            fontSize: FontManager.font22,
          ),
          errorStyle: TextStyle(color: ColorManager.redColor),
          enabledBorder: buildOutlineInputBorder(
            color: ColorManager.transmentColor,
          ),
          focusedBorder: buildOutlineInputBorder(
            color: ColorManager.primaryColor,
          ),
          errorBorder: buildOutlineInputBorder(color: ColorManager.redColor),
          fillColor: ColorManager.fillColor,
          filled: true,

          suffixIcon: suffixIcon,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(RadiusManager.r10),
      borderSide: BorderSide(color: color, width: WidthManager.w1),
    );
  }
}

class TextFeildItem extends StatelessWidget {
  const TextFeildItem({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.validator,
    required this.onChanged,
  });
  final String labelText;
  final String hintText;
  final String? Function(String?) validator;
  final Function(double) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: (value) {
        double val = double.tryParse(value) ?? 0;
        onChanged(val);
      },
      style: TextStyle(color: ColorManager.blackColor),
      cursorColor: ColorManager.primaryColor,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        hintStyle: TextStyle(color: ColorManager.hintColor),
        labelStyle: TextStyle(
          color: ColorManager.primaryColor,
          fontSize: FontManager.font22,
        ),
        errorStyle: TextStyle(color: ColorManager.redColor),
        enabledBorder: buildOutlineInputBorder(
          color: ColorManager.transmentColor,
        ),
        focusedBorder: buildOutlineInputBorder(
          color: ColorManager.primaryColor,
        ),
        errorBorder: buildOutlineInputBorder(color: ColorManager.redColor),
        fillColor: ColorManager.fillColor,
        filled: true,
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(RadiusManager.r10),
      borderSide: BorderSide(color: color, width: WidthManager.w1),
    );
  }
}
