import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class CustomTextFeild extends StatefulWidget {
  const CustomTextFeild({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.iconData,
    this.obscureText = false,
    this.onPressed,
    this.validator,
    this.controller,
    this.onChanged,
  });
  final String labelText;
  final String hintText;
  final IconData iconData;
  final bool obscureText;
  final Function()? onPressed;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  State<CustomTextFeild> createState() => _CustomTextFeildState();
}

class _CustomTextFeildState extends State<CustomTextFeild> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p40),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.onUserInteraction,
        onChanged: widget.onChanged,
        controller: widget.controller,
        validator: widget.validator,
        obscureText: widget.obscureText,
        style: TextStyle(color: ColorManager.primaryColor),
        cursorColor: ColorManager.primaryColor,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
          hintStyle: TextStyle(color: ColorManager.hintColor),
          labelStyle: TextStyle(color: ColorManager.primaryColor),
          suffixIcon: IconButton(
            onPressed: widget.onPressed,
            icon: Icon(widget.iconData, color: ColorManager.primaryColor),
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
