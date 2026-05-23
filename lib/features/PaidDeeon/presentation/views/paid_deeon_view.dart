import 'package:deeon/core/helpers/is_arabic.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/features/PaidDeeon/presentation/bloc/paidDeeon/paid_deeon_cubit.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/list_view_paid_deeon_feature.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/pdf_floating_action_button.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:deeon/generated/l10n.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PaidDeeonView extends StatefulWidget {
  const PaidDeeonView({
    super.key,
    required this.customerId,
    required this.customerModel,
  });
  static String id = RouteManager.paidDeeonViewRoute;
  final String customerId;
  final CustomerModel customerModel;

  @override
  State<PaidDeeonView> createState() => _PaidDeeonViewState();
}

class _PaidDeeonViewState extends State<PaidDeeonView> {
  @override
  void initState() {
    BlocProvider.of<PaidDeeonCubit>(context).customerId = widget.customerId;
    BlocProvider.of<PaidDeeonCubit>(context).displayPaidDeeons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.fillColor,
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorManager.appBarIconColor),
        title: Text(S.of(context).paidDebt, style: Styles.textStyle25),
      ),
      body: Padding(
        padding: EdgeInsets.all(PaddingManager.p16),
        child: Column(
          children: [
            Expanded(
              child: BlocBuilder<PaidDeeonCubit, PaidDeeonState>(
                builder: (context, state) {
                  if (state is DeeonPaidSuccess) {
                    return ListViewPaidDeeonFeature(deeonModel: state.deeon);
                  }
                  return SizedBox.shrink();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: BlocBuilder<PaidDeeonCubit, PaidDeeonState>(
        builder: (context, state) {
          if (state is DeeonPaidSuccess) {
            return PDFfloatingActionButton(
              deeonModel: state.deeon,
              customerModel: widget.customerModel,
            );
          }
          return SizedBox.shrink();
        },
      ),
      floatingActionButtonLocation: isArabic()
          ? FloatingActionButtonLocation.startFloat
          : FloatingActionButtonLocation.endFloat,
    );
  }
}
