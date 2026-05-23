import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/debts/data/model/deeon_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget totalPdfSection({
  required PdfColor primaryColor,
  required List<DeeonModel> deeonModel,
  required pw.Font arabicBoldFont,
}) {
  final total = deeonModel.fold(
    0.0,
    (sum, e) => sum + (e.priceItem * e.countItem),
  );

  return pw.Container(
    width: double.infinity,
    decoration: pw.BoxDecoration(
      border: pw.Border.all(color: primaryColor, width: WidthManager.w1),
      borderRadius: pw.BorderRadius.all(pw.Radius.circular(RadiusManager.r8)),
    ),
    padding: pw.EdgeInsets.all(PaddingManager.p12),
    child: pw.Row(
      mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
      children: [
        pw.Text(
          textDirection: pw.TextDirection.rtl,
          '$total ${TextManger.realPdf}',
          style: pw.TextStyle(
            font: arabicBoldFont,
            fontSize: FontManager.font15,
            color: primaryColor,
          ),
        ),
        pw.Text(
          TextManger.totalPaid,
          textDirection: pw.TextDirection.rtl,
          style: pw.TextStyle(
            font: arabicBoldFont,
            fontSize: FontManager.font15,
            color: primaryColor,
          ),
        ),
      ],
    ),
  );
}
