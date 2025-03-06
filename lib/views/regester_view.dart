import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/font_manager.dart';
import 'package:deeon_app/core/height_width_manager.dart';
import 'package:deeon_app/core/route_manager.dart';
import 'package:deeon_app/core/text_manager.dart';
import 'package:deeon_app/widgets/content_regester_view.dart';
import 'package:flutter/material.dart';

class RegesterView extends StatelessWidget {
  const RegesterView({super.key});
  static String id = RouteManager.kRegesterView;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorPrimary,
        body: Column(
          children: [
            SizedBox(height: HeightManager.h80),
            Text(
              TextManager.kCreateAccount,
              style:
                  TextStyle(color: Colors.white, fontSize: FontManager.font30),
            ),
            const Spacer(),
            const ContentRegesterScreen(),
          ],
        ));
  }
}
