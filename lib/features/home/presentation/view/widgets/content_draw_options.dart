import 'package:deeon/constant.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/view/widgets/switch_dark_theme.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class CustomSignOutButton extends StatelessWidget {
  const CustomSignOutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        padding: EdgeInsets.symmetric(
          vertical: PaddingManager.p8,
          horizontal: PaddingManager.p16,
        ),
        children: [
          SizedBox(height: HeightManager.h20),
          GestureDetector(
            onTap: () async {
              final uid = FirebaseAuth.instance.currentUser?.uid;
              await FirebaseAuth.instance.signOut();
              if (uid != null && Hive.isBoxOpen("$customerBox$uid")) {
                await Hive.box<CustomerModel>("$customerBox$uid").close();
              }
              Navigator.pushReplacementNamed(
                // ignore: use_build_context_synchronously
                context,
                RouteManager.loginRoute,
              );
            },
            child: CustomSwitch(
              color: ColorManager.rubyRedColor,
              iconData: Icons.logout,
              text: TextManger.signOut,
            ),
          ),
        ],
      ),
    );
  }
}
