import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/custom_text_button_deeon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class IconsDetailsDeeon extends StatelessWidget {
  const IconsDetailsDeeon({
    super.key,
    required this.onTapPayment,
    required this.index,
  });
  final void Function() onTapPayment;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CustomTextButtonDeeon(
          onTap: () {},
          title: TextManger.discount,
          iconData: Icons.discount,
          color: ColorManager.discount,
        ),
        CustomTextButtonDeeon(
          onTap: onTapPayment,
          title: TextManger.payment,
          iconData: Icons.payment,
          color: ColorManager.payment,
        ),
        CustomTextButtonDeeon(
          onTap: () =>
              BlocProvider.of<DeeonCubit>(context).deletedDeeonDate(index),
          title: TextManger.remove,
          iconData: Icons.delete,
          color: ColorManager.rubyRedColor,
        ),
      ],
    );
  }
}
