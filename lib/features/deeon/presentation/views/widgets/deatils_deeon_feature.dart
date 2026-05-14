import 'package:deeon/core/helpers/custom_awesome_dialog.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/bloc/paidDeeon/paid_deeon_cubit.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/icons_details_feature.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/text_deeon_feature.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailsDeeonFeature extends StatefulWidget {
  const DetailsDeeonFeature({
    super.key,
    required this.deeonModel,
    required this.index,
    required this.customerModel,
  });
  final DeeonModel deeonModel;
  final CustomerModel customerModel;
  final int index;

  @override
  State<DetailsDeeonFeature> createState() => _DetailsDeeonFeatureState();
}

class _DetailsDeeonFeatureState extends State<DetailsDeeonFeature> {
  final TextEditingController discountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.25,
      width: size.width * 0.90,
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
            onDiscount: () {
              CustomAswesomeDialog().AwesomeDialogDiscount(
                context: context,
                btnOkOnPress: () async {
                  widget.deeonModel.discountPrice =
                      double.tryParse(discountController.text) ?? 0.0;
                  widget.deeonModel.isDiscount = true;
                  await widget.deeonModel.save();
                  setState(() {});
                },
                discountController: discountController,
              );
            },
            onTapPayment: () async {
              final deeonCubit = BlocProvider.of<DeeonCubit>(context);
              final paidCubit = BlocProvider.of<PaidDeeonCubit>(context);
              paidCubit.customerId = deeonCubit.customerId;
              await deeonCubit.deletedDeeonDate(widget.index);
              await paidCubit.payDeeon(deeon: widget.deeonModel);
              Navigator.pushNamed(
                context,
                PaidDeeonView.id,
                arguments: {
                  'customerId': deeonCubit.customerId,
                  'customerModel': widget.customerModel,
                },
              );
            },
            onremove: () => BlocProvider.of<DeeonCubit>(
              context,
            ).deletedDeeonDate(widget.index),
          ),
          SizedBox(width: size.width * 0.060),
          TextDeeonFeature(deeonModel: widget.deeonModel),
        ],
      ),
    );
  }
}
