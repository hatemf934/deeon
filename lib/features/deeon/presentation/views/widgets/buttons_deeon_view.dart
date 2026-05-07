import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/adding_deeon_button.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/watching_deeon_buuton.dart';
import 'package:flutter/material.dart';

class ButtonsDeeonView extends StatelessWidget {
  const ButtonsDeeonView({super.key, required this.ontap});
  final Function() ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          WatchingDeoonButton(onTap: ontap),
          AddingDeeonButton(),
        ],
      ),
    );
  }
}
