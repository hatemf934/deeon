import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:flutter/material.dart';

class WatchingDeoonButton extends StatelessWidget {
  const WatchingDeoonButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, PaidDeeonView.id);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.43,
        height: MediaQuery.of(context).size.height * 0.050,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.r10),
          color: ColorManager.transmentColor,
          border: Border.all(color: ColorManager.witheColor),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              TextManger.watchDeeon,
              style: Styles.textStyle15.copyWith(fontWeight: FontWeight.bold),
            ),
            Icon(Icons.arrow_forward, color: ColorManager.appBarIconColor),
          ],
        ),
      ),
    );
  }
}
