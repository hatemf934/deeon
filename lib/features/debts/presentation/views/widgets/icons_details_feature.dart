import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/features/debts/presentation/views/widgets/custom_text_button_deeon.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class IconsDetailsDeeon extends StatelessWidget {
  const IconsDetailsDeeon({
    super.key,
    required this.onTapPayment,
    required this.onremove,
    required this.onDiscount,
  });
  final void Function() onTapPayment;
  final void Function() onremove;
  final void Function() onDiscount;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextButtonDeeon(
          onTap: onDiscount,
          title: S.of(context).discount,
          iconData: Icons.discount,
          color: ColorManager.discount,
        ),
        CustomTextButtonDeeon(
          onTap: onTapPayment,
          title: S.of(context).payment,
          iconData: Icons.payment,
          color: ColorManager.payment,
        ),
        CustomTextButtonDeeon(
          onTap: onremove,
          title: S.of(context).remove,
          iconData: Icons.delete,
          color: ColorManager.rubyRedColor,
        ),
      ],
    );
  }
}
