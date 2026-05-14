import 'package:deeon/core/helpers/generate_pdf.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';

class PDFfloatingActionButton extends StatelessWidget {
  const PDFfloatingActionButton({
    super.key,
    required this.deeonModel,
    required this.customerModel,
  });
  final List<DeeonModel> deeonModel;
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: PaddingManager.p16,
        right: PaddingManager.p8,
      ),
      child: FloatingActionButton(
        onPressed: () =>
            generatePDF(deeonModel: deeonModel, customerModel: customerModel),
        backgroundColor: ColorManager.primaryColor,
        foregroundColor: ColorManager.secondryColor,
        elevation: 8,
        child: Icon(Icons.picture_as_pdf, size: FontManager.font30),
      ),
    );
  }
}
