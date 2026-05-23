import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/debts/presentation/views/widgets/show_model_button_sheet_deeon.dart';
import 'package:deeon/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddingDeeonButton extends StatelessWidget {
  const AddingDeeonButton({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => showModelButtonSheetDeeon(context),
      child: Container(
        width: size.width * 0.28,
        height: size.height * 0.050,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.r10),
          color: ColorManager.secondryColor,
        ),
        child: Center(
          child: Text(
            S.of(context).addDebt,
            style: Styles.textStyle22.copyWith(
              color: ColorManager.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
