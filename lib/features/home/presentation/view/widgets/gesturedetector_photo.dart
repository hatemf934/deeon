import 'dart:io';
import 'package:deeon/core/utils/assets_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/details_photo.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class GesturedetectorPhoto extends StatefulWidget {
  const GesturedetectorPhoto({super.key});

  @override
  State<GesturedetectorPhoto> createState() => _GesturedetectorPhotoState();
}

class _GesturedetectorPhotoState extends State<GesturedetectorPhoto> {
  XFile? profileImage;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.pushTransparentRoute(
          DetailsPhoto(
            initialImage: profileImage,
            onImageChanged: (value) {
              setState(() {
                profileImage = value;
              });
            },
          ),
        );
      },
      child: Hero(
        tag: TextManger.profileTag,
        child: ClipOval(
          child: profileImage == null
              ? Image.asset(AssetsManager.kProfile, fit: BoxFit.cover)
              : Image.file(File(profileImage!.path)),
        ),
      ),
    );
  }
}
