import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/show_model_button_sheet_deeon.dart';
import 'package:flutter/material.dart';

class AddingDeeonButton extends StatelessWidget {
  const AddingDeeonButton({super.key, required this.onAddDeeon});
  final Function(DeeonModel) onAddDeeon;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModelButtonSheetDeeon(context, onAddDeeon);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.28,
        height: MediaQuery.of(context).size.height * 0.050,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.r10),
          color: ColorManager.secondryColor,
        ),
        child: Center(
          child: Text(
            TextManger.addDeeon,
            style: Styles.textStyle22.copyWith(
              color: ColorManager.primaryColor,
            ),
          ),
        ),
      ),
    );
  }
}
