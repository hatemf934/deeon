import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_user_account.dart';
import 'package:flutter/material.dart';

class UserAccountSection extends StatelessWidget {
  const UserAccountSection({
    super.key,
    required this.email,
    required this.name,
  });
  final String email;
  final String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: PaddingManager.p40),
      decoration: BoxDecoration(
        color: ColorManager.drawerAccountColor,
        border: Border(bottom: BorderSide(color: ColorManager.witheColor)),
      ),
      child: BodyUserAccount(email: email, name: name),
    );
  }
}
