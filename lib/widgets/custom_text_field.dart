import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/height_width_manager.dart';
import 'package:deeon_app/core/padding_radius_manager.dart';
import 'package:flutter/material.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    this.text,
    this.suffixIcon,
  });
  final String? text;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: WidthManager.w370,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: PaddingManager.pd10),
        child: TextFormField(
          decoration: InputDecoration(
              suffixIcon: suffixIcon,
              hintText: text,
              hintStyle: const TextStyle(color: kColorPrimary),
              focusedBorder: buildOutLineBorder(kColorPrimary),
              enabledBorder: buildOutLineBorder()),
          keyboardType: TextInputType.multiline,
        ),
      ),
    );
  }

  OutlineInputBorder buildOutLineBorder([color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(
          width: WidthManager.w2, color: color ?? Colors.grey.withOpacity(.8)),
      borderRadius: BorderRadius.circular(RadiusManager.ru16),
    );
  }
}
