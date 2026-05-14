import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget headerPdfSection({
  required PdfColor primaryColor,
  required PdfColor textColor,
  required pw.Font arabicFont,
  required pw.Font arabicBoldFont,
}) {
  return pw.Container(
    width: double.infinity,
    decoration: pw.BoxDecoration(
      color: primaryColor,
      borderRadius: pw.BorderRadius.all(pw.Radius.circular(RadiusManager.r8)),
    ),
    padding: pw.EdgeInsets.symmetric(vertical: PaddingManager.p8),
    child: pw.Column(
      children: [
        pw.Text(
          TextManger.deeonpdf,
          style: pw.TextStyle(
            font: arabicBoldFont,
            fontSize: FontManager.font30,
            color: textColor,
          ),
        ),
        pw.SizedBox(height: HeightManager.h4),
        pw.Text(
          TextManger.systemManageDeeon,
          textDirection: pw.TextDirection.rtl,
          style: pw.TextStyle(
            font: arabicFont,
            fontSize: FontManager.font15,
            color: textColor,
          ),
        ),
      ],
    ),
  );
}
