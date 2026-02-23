import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_deatils_photo.dart';
import 'package:dismissible_page/dismissible_page.dart';
import 'package:flutter/material.dart';

class DetailsPhoto extends StatelessWidget {
  const DetailsPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return DismissiblePage(
      hitTestBehavior: HitTestBehavior.translucent,
      onDismissed: () => Navigator.of(context).pop(),
      direction: DismissiblePageDismissDirection.down,
      child: Scaffold(
        backgroundColor: ColorManager.transmentColor,
        appBar: AppBar(
          backgroundColor: ColorManager.transmentColor,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: ColorManager.witheColor),
            onPressed: () => Navigator.pop(context),
          ),
        ),
        body: BodyDetailsPhoto(),
      ),
    );
  }
}
