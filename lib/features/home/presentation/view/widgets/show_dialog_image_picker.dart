import 'package:deeon/features/home/presentation/view/widgets/build_options.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class ShowDialogImagePicker extends StatelessWidget {
  const ShowDialogImagePicker({
    super.key,
    required this.onPressedCamera,
    required this.onPressedGalery,
  });
  final VoidCallback onPressedCamera;
  final VoidCallback onPressedGalery;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildOptions(
          onPressed: onPressedCamera,
          icon: Icons.camera_alt_outlined,
          label: S.of(context).camera,
        ),
        BuildOptions(
          onPressed: onPressedGalery,
          icon: Icons.photo_outlined,
          label: S.of(context).gallery,
        ),
      ],
    );
  }
}
