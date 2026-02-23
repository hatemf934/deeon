import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/details_photo.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class GesturedetectorPhoto extends StatelessWidget {
  const GesturedetectorPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushTransparentRoute(const DetailsPhoto());
      },
      child: Hero(
        tag: TextManger.profileTag,
        child: ClipOval(
          child: Image.asset(
            "assets/images/blank-profile-picture-973460_1280.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
