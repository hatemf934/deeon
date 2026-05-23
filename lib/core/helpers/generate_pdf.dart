import 'package:deeon/core/utils/assets_manager.dart';
import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/total_pdf_section.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/customer_info_pdf_section.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/header_pdf_section.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/widgets/table_pdf_section.dart';
import 'package:deeon/features/debts/data/model/deeon_model.dart';
import 'package:deeon/features/customers/data/model/customer_model.dart';
import 'package:flutter/services.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

Future<void> generatePDF({
  required List<DeeonModel> deeonModel,
  required CustomerModel customerModel,
}) async {
  final pdf = pw.Document();

  final regularFont = await rootBundle.load(AssetsManager.cairoRegular);
  final boldFont = await rootBundle.load(AssetsManager.cairoBold);
  final arabicFont = pw.Font.ttf(regularFont);
  final arabicBoldFont = pw.Font.ttf(boldFont);

  const primaryColor = PdfColor.fromInt(0xFF017f73);
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      margin: pw.EdgeInsets.all(PaddingManager.p24),
      build: (pw.Context context) {
        return pw.Container(
          decoration: pw.BoxDecoration(
            border: pw.Border.all(color: primaryColor, width: WidthManager.w3),
            borderRadius: pw.BorderRadius.all(
              pw.Radius.circular(RadiusManager.r12),
            ),
          ),
          padding: pw.EdgeInsets.all(PaddingManager.p16),
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.center,
            children: [
              headerPdfSection(
                primaryColor: primaryColor,
                textColor: PdfColors.white,
                arabicFont: arabicFont,
                arabicBoldFont: arabicBoldFont,
              ),
              pw.SizedBox(height: HeightManager.h12),
              customerInfoPdfSection(
                primaryColor: primaryColor,
                customerModel: customerModel,
                arabicFont: arabicFont,
                arabicBoldFont: arabicBoldFont,
              ),
              pw.SizedBox(height: HeightManager.h15),
              tablePdfSection(
                primaryColor: primaryColor,
                deeonModel: deeonModel,
                arabicFont: arabicFont,
                arabicBoldFont: arabicBoldFont,
              ),
              pw.SizedBox(height: HeightManager.h15),
              totalPdfSection(
                primaryColor: primaryColor,
                deeonModel: deeonModel,
                arabicBoldFont: arabicBoldFont,
              ),
              pw.Spacer(),
              pw.Text(
                TextManger.pageOneFromOne,
                textDirection: pw.TextDirection.rtl,
                style: pw.TextStyle(
                  font: arabicFont,
                  fontSize: FontManager.font11,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );

  await Printing.layoutPdf(
    onLayout: (PdfPageFormat format) async => pdf.save(),
  );
}
