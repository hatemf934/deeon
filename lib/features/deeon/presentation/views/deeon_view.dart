import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/body_of_deeon_view.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DeeonView extends StatefulWidget {
  const DeeonView({super.key, required this.customerModel});
  static String id = RouteManager.deeonViewRoute;
  final CustomerModel customerModel;

  @override
  State<DeeonView> createState() => _DeeonViewState();
}

class _DeeonViewState extends State<DeeonView> {
  @override
  void initState() {
    BlocProvider.of<DeeonCubit>(context).customerId = widget.customerModel.id;
    BlocProvider.of<DeeonCubit>(context).displayDeeonDate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: AppBar(
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorManager.appBarIconColor),
        backgroundColor: ColorManager.primaryColor,
        title: Text(TextManger.detailsCustomer, style: Styles.textStyle25),
      ),
      body: BodyOfDeeonView(customerModel: widget.customerModel),
    );
  }
}
