import 'package:deeon_app/constant.dart';
import 'package:deeon_app/core/font_manager.dart';
import 'package:deeon_app/core/height_width_manager.dart';
import 'package:deeon_app/core/route_manager.dart';
import 'package:deeon_app/core/text_manager.dart';
import 'package:deeon_app/widgets/content_home_view.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = RouteManager.kHomeView;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kColorPrimary,
        body: Column(
          children: [
            SizedBox(height: HeightManager.h80),
            Text(
              TextManager.kHomeTitle,
              style:
                  TextStyle(color: Colors.white, fontSize: FontManager.font30),
            ),
            const Spacer(),
            const ContentHomeScreen(),
          ],
        ));
  }
}
