import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/list_view_paid_deeon_feature.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/pdf_floating_action_button.dart';
import 'package:flutter/material.dart';

class PaidDeeonView extends StatelessWidget {
  const PaidDeeonView({super.key});
  static String id = RouteManager.deeonViewRoute;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.fillColor,
      appBar: AppBar(
        backgroundColor: ColorManager.primaryColor,
        centerTitle: true,
        iconTheme: IconThemeData(color: ColorManager.appBarIconColor),
        title: Text(TextManger.paidDeeon, style: Styles.textStyle25),
      ),
      body: Padding(
        padding: EdgeInsets.all(PaddingManager.p16),
        child: Column(children: [Expanded(child: ListViewPaidDeeonFeature())]),
      ),
      floatingActionButton: PDFfloatingActionButton(),
    );
  }
}
