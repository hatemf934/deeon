import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/view/widgets/build_options.dart';
import 'package:flutter/material.dart';

class ShowDialogImagePicker extends StatelessWidget {
  const ShowDialogImagePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildOptions(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.camera_alt_outlined,
          label: TextManger.camera,
        ),
        BuildOptions(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icons.photo_outlined,
          label: TextManger.galery,
        ),
      ],
    );
  }
}
