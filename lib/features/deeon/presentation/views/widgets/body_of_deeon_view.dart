import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/buttons_deeon_view.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/details_customer.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/list_of_deeon.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyOfDeeonView extends StatefulWidget {
  const BodyOfDeeonView({super.key, required this.customerModel});
  final CustomerModel customerModel;
  @override
  State<BodyOfDeeonView> createState() => _BodyOfDeeonViewState();
}

class _BodyOfDeeonViewState extends State<BodyOfDeeonView> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DetailsCustomer(customerModel: widget.customerModel),
        Divider(
          endIndent: HeightManager.h20,
          height: WidthManager.w40,
          indent: HeightManager.h20,
          thickness: 3,
          color: ColorManager.secondryColor,
        ),
        Text(
          TextManger.deeeons,
          style: Styles.textStyle30.copyWith(color: ColorManager.secondryColor),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        BlocBuilder<DeeonCubit, DeeonState>(
          builder: (context, state) {
            if (state is DeeonGettingSuccess) {
              return Expanded(child: ListOfDeeon(deeonModel: state.deeon));
            }
            return Expanded(child: Container());
          },
        ),
        Divider(
          endIndent: HeightManager.h20,
          height: WidthManager.w40,
          indent: HeightManager.h20,
          thickness: 3,
          color: ColorManager.secondryColor,
        ),
        ButtonsDeeonView(
          ontap: () => Navigator.pushNamed(context, PaidDeeonView.id),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
      ],
    );
  }
}
