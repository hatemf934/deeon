import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/icons_details_feature.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/text_deeon_feature.dart';
import 'package:flutter/material.dart';

class DetailsDeeonFeature extends StatelessWidget {
  const DetailsDeeonFeature({super.key, required this.deeonModel});
  final DeeonModel deeonModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width * 0.90,
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p8),
      decoration: BoxDecoration(
        color: ColorManager.fillColor,
        borderRadius: BorderRadius.circular(RadiusManager.r20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconsDetailsDeeon(),
          SizedBox(width: MediaQuery.of(context).size.width * 0.060),
          TextDeeonFeature(deeonModel: deeonModel),
        ],
      ),
    );
  }
}
