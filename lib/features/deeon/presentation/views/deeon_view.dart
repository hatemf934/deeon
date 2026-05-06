import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/body_of_deeon_view.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';

import 'package:flutter/material.dart';

class DeeonView extends StatelessWidget {
  const DeeonView({super.key, required this.customerModel});
  static String id = RouteManager.deeonViewRoute;
  final CustomerModel customerModel;
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
      body: BodyOfDeeonView(customerModel: customerModel),
    );
  }
}
