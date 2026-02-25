import 'dart:io';

import 'package:deeon/core/utils/assets_manager.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/data/repo/methodsrepo/methods_repo_implement.dart';
import 'package:deeon/features/home/presentation/view/widgets/show_dialog.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class BodyDetailsPhoto extends StatefulWidget {
  const BodyDetailsPhoto({
    super.key,
    this.initialImage,
    required this.onImageChanged,
  });
  final XFile? initialImage;
  final Function(XFile?) onImageChanged;

  @override
  State<BodyDetailsPhoto> createState() => _BodyDetailsPhotoState();
}

class _BodyDetailsPhotoState extends State<BodyDetailsPhoto> {
  final TransformationController transformationController =
      TransformationController();
  TapDownDetails? doubleTapDetails;
  final ImagePicker _picker = ImagePicker();
  XFile? selectedImage;

  @override
  void initState() {
    super.initState();
    selectedImage = widget.initialImage;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Hero(
              tag: TextManger.profileTag,
              child: GestureDetector(
                onDoubleTapDown: (details) => doubleTapDetails = details,
                onDoubleTap: () => MethodsRepoImplement().handleDoubleTap(
                  transformationController,
                  doubleTapDetails,
                ),
                child: InteractiveViewer(
                  transformationController: transformationController,
                  clipBehavior: Clip.none,
                  maxScale: 2,
                  child: selectedImage == null
                      ? Image.asset(AssetsManager.kProfile, fit: BoxFit.contain)
                      : Image.file(File(selectedImage!.path)),
                ),
              ),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: PaddingManager.p16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              buildActionButton(Icons.edit, () {
                _onEditPressed();
              }, TextManger.edit),
              buildActionButton(
                Icons.delete_outline,
                () {},
                TextManger.delete,
                color: ColorManager.rubyRedColor,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildActionButton(
    IconData icon,
    Function() onTap,
    String label, {
    Color color = Colors.white,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, color: color, size: FontManager.font30),
          SizedBox(height: HeightManager.h4),
          Text(
            label,
            style: TextStyle(color: color, fontSize: FontManager.font15),
          ),
        ],
      ),
    );
  }

  void _onEditPressed() async {
    await showOptionsDialog(context, (source) async {
      final pickedImage = await _picker.pickImage(source: source);
      if (pickedImage != null) {
        setState(() {
          selectedImage = pickedImage;
        });
        widget.onImageChanged(pickedImage);
      }
    });
  }
}
