import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class WatchingDeoonButton extends StatelessWidget {
  const WatchingDeoonButton({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: size.width * 0.45,
        height: size.height * 0.050,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.r10),
          color: ColorManager.transmentColor,
          border: Border.all(color: ColorManager.witheColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              S.of(context).watchDebt,
              style: Styles.textStyle15.copyWith(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_forward, color: ColorManager.appBarIconColor),
          ],
        ),
      ),
    );
  }
}
