import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/bloc/paidDeeon/paid_deeon_cubit.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/icons_details_feature.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/text_deeon_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsDeeonFeature extends StatelessWidget {
  const DetailsDeeonFeature({
    super.key,
    required this.deeonModel,
    required this.index,
  });
  final DeeonModel deeonModel;
  final int index;
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
          IconsDetailsDeeon(
            onTapPayment: () async {
              final deeonCubit = BlocProvider.of<DeeonCubit>(context);
              final paidCubit = BlocProvider.of<PaidDeeonCubit>(context);
              paidCubit.customerId = deeonCubit.customerId;
              await deeonCubit.deletedDeeonDate(index);
              await paidCubit.payDeeon(deeon: deeonModel);
              Navigator.pushNamed(
                context,
                PaidDeeonView.id,
                arguments: deeonCubit.customerId,
              );
            },
            onremove: () =>
                BlocProvider.of<DeeonCubit>(context).deletedDeeonDate(index),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.060),
          TextDeeonFeature(deeonModel: deeonModel),
        ],
      ),
    );
  }
}
