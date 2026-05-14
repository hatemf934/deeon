import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget customerInfoPdfSection({
  required PdfColor primaryColor,
  required CustomerModel customerModel,
  required pw.Font arabicFont,
  required pw.Font arabicBoldFont,
}) {
  return pw.Container(
    width: double.infinity,
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: primaryColor, width: WidthManager.w1),
      borderRadius: pw.BorderRadius.all(pw.Radius.circular(RadiusManager.r8)),
    ),
    padding: pw.EdgeInsets.all(PaddingManager.p12),
    child: pw.Column(
      crossAxisAlignment: pw.CrossAxisAlignment.end,
      children: [
        pw.Text(
          TextManger.customerInfo,
          textDirection: pw.TextDirection.rtl,
          style: pw.TextStyle(
            font: arabicBoldFont,
            fontSize: FontManager.font15,
            color: primaryColor,
          ),
        ),
        pw.SizedBox(height: HeightManager.h8),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              customerModel.nameCustomer,
              textDirection: pw.TextDirection.rtl,
              style: pw.TextStyle(
                font: arabicFont,
                fontSize: FontManager.font12,
              ),
            ),
            pw.SizedBox(width: HeightManager.h8),
            pw.Text(
              TextManger.customerNamePdf,
              textDirection: pw.TextDirection.rtl,
              style: pw.TextStyle(
                font: arabicBoldFont,
                fontSize: FontManager.font12,
              ),
            ),
          ],
        ),
        pw.SizedBox(height: HeightManager.h4),
        pw.Row(
          mainAxisAlignment: pw.MainAxisAlignment.end,
          children: [
            pw.Text(
              customerModel.phone,
              style: pw.TextStyle(
                font: arabicFont,
                fontSize: FontManager.font12,
              ),
            ),
            pw.SizedBox(width: HeightManager.h8),
            pw.Text(
              TextManger.customerPhonePdf,
              textDirection: pw.TextDirection.rtl,
              style: pw.TextStyle(
                font: arabicBoldFont,
                fontSize: FontManager.font12,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
