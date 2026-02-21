import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_text_feild.dart';
import 'package:flutter/material.dart';

class ConfirmPasswordTextFeild extends StatefulWidget {
  const ConfirmPasswordTextFeild({
    super.key,
    required this.labelText,
    this.validator,
    this.controller,
  });
  final String labelText;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  @override
  State<ConfirmPasswordTextFeild> createState() =>
      _ConfirmPasswordTextFeildState();
}

class _ConfirmPasswordTextFeildState extends State<ConfirmPasswordTextFeild> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFeild(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: obscureText,
      onPressed: () {
        setState(() {
          obscureText = !obscureText;
        });
      },
      labelText: widget.labelText,
      hintText: TextManger.passwordHint,
      iconData: obscureText ? Icons.visibility_off : Icons.visibility,
    );
  }
}
