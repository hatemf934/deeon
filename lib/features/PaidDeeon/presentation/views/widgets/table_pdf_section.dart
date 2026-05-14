import 'package:deeon/core/utils/font_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

pw.Widget tablePdfSection({
  required PdfColor primaryColor,
  required List<DeeonModel> deeonModel,
  required pw.Font arabicFont,
  required pw.Font arabicBoldFont,
}) {
  return pw.Table(
    border: pw.TableBorder.all(color: primaryColor, width: WidthManager.w1),
    columnWidths: const {
      0: pw.FlexColumnWidth(2),
      1: pw.FlexColumnWidth(2),
      2: pw.FlexColumnWidth(2),
      3: pw.FlexColumnWidth(2),
    },
    children: [
      // Header Row
      pw.TableRow(
        decoration: pw.BoxDecoration(color: primaryColor),
        children: [
          _tableCell(TextManger.dataPdf, arabicBoldFont, isHeader: true),
          _tableCell(TextManger.countPdf, arabicBoldFont, isHeader: true),
          _tableCell(TextManger.pricePdf, arabicBoldFont, isHeader: true),
          _tableCell(TextManger.nameItemPdf, arabicBoldFont, isHeader: true),
        ],
      ),
      // Data Rows
      ...deeonModel.map(
        (e) => pw.TableRow(
          children: [
            _tableCell(e.dateDeeon, arabicFont),
            _tableCell('${e.countItem}', arabicFont),
            _tableCell('${e.priceItem} ${TextManger.realPdf}', arabicFont),
            _tableCell(e.nameItem, arabicFont),
          ],
        ),
      ),
    ],
  );
}

pw.Widget _tableCell(String text, pw.Font font, {bool isHeader = false}) {
  return pw.Padding(
    padding: pw.EdgeInsets.all(PaddingManager.p8),
    child: pw.Text(
      text,
      textDirection: pw.TextDirection.rtl,
      style: pw.TextStyle(
        font: font,
        fontSize: isHeader ? FontManager.font12 : FontManager.font11,
        color: isHeader ? PdfColors.white : PdfColors.black,
      ),
      textAlign: pw.TextAlign.center,
    ),
  );
}
