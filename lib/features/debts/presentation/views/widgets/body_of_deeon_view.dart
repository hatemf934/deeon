import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/debts/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/debts/presentation/views/widgets/buttons_deeon_view.dart';
import 'package:deeon/features/debts/presentation/views/widgets/details_customer.dart';
import 'package:deeon/features/debts/presentation/views/widgets/list_of_deeon.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/generated/l10n.dart';
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
    final size = MediaQuery.of(context).size;
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
          S.of(context).debts,
          style: Styles.textStyle30.copyWith(color: ColorManager.secondryColor),
        ),
        SizedBox(height: size.height * 0.010),
        BlocBuilder<DeeonCubit, DeeonState>(
          builder: (context, state) {
            if (state is DeeonGettingSuccess) {
              return Expanded(
                child: ListOfDeeon(
                  deeonModel: state.deeon,
                  customerModel: widget.customerModel,
                ),
              );
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
          ontap: () {
            final customerId = BlocProvider.of<DeeonCubit>(context).customerId;
            Navigator.pushNamed(
              context,
              PaidDeeonView.id,
              arguments: {
                'customerId': customerId,
                'customerModel': widget.customerModel,
              },
            );
          },
        ),
        SizedBox(height: HeightManager.h20),
      ],
    );
  }
}
