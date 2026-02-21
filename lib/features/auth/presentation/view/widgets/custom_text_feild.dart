import 'package:deeon/core/color_manager.dart';
import 'package:deeon/core/padding_manager.dart';
import 'package:deeon/core/radius_manager.dart';
import 'package:deeon/core/width_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatelessWidget {
  const CustomTextFeild({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.iconData,
    this.obscureText = false,
    this.onPressed,
    required this.validator,
  });
  final String labelText;
  final String hintText;
  final IconData iconData;
  final bool obscureText;
  final Function()? onPressed;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p40),
      child: TextFormField(
        validator: validator,
        obscureText: obscureText,
        style: TextStyle(color: ColorManager.primaryColor),
        cursorColor: ColorManager.primaryColor,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          hintStyle: TextStyle(color: ColorManager.hintColor),
          labelStyle: TextStyle(color: ColorManager.primaryColor),
          suffixIcon: IconButton(
            onPressed: onPressed,
            icon: Icon(iconData, color: ColorManager.primaryColor),
          ),
          errorStyle: TextStyle(color: ColorManager.redColor),
          enabledBorder: buildOutlineInputBorder(
            color: ColorManager.enabledColor,
          ),
          focusedBorder: buildOutlineInputBorder(
            color: ColorManager.primaryColor,
          ),
          errorBorder: buildOutlineInputBorder(color: ColorManager.redColor),
          fillColor: ColorManager.transmentColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder({required Color color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(RadiusManager.r20),
      borderSide: BorderSide(color: color, width: WidthManager.w1),
    );
  }
}
