import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/route_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/list_view_paid_deeon_feature.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/pdf_floating_action_button.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:flutter/material.dart';

class PaidDeeonView extends StatelessWidget {
  const PaidDeeonView({super.key});
  static String id = RouteManager.paidDeeonViewRoute;
  @override
  Widget build(BuildContext context) {
    List<DeeonModel> deeonModel =
        ModalRoute.of(context)!.settings.arguments as List<DeeonModel>;
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
        child: Column(
          children: [
            Expanded(child: ListViewPaidDeeonFeature(deeonModel: deeonModel)),
          ],
        ),
      ),
      floatingActionButton: PDFfloatingActionButton(),
    );
  }
}
