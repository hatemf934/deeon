import 'package:bottom_picker/bottom_picker.dart';
import 'package:bottom_picker/resources/arrays.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/text_validate_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CalenderTextFeild extends StatefulWidget {
  const CalenderTextFeild({super.key, required this.onChangedDate});
  final Function(String) onChangedDate;
  @override
  State<CalenderTextFeild> createState() => _CalenderTextFeildState();
}

class _CalenderTextFeildState extends State<CalenderTextFeild> {
  final TextEditingController dataController = TextEditingController();
  void openDatePicker(BuildContext context) {
    BottomPicker.date(
      headerBuilder: (context) {
        return Row(
          children: [
            Text(
              TextManger.choseDataAdding,
              style: Styles.textStyle22.copyWith(
                color: ColorManager.primaryColor,
              ),
            ),
          ],
        );
      },
      height: MediaQuery.of(context).size.height * 0.30,
      pickerTextStyle: Styles.textStyle22.copyWith(
        color: ColorManager.primaryColor,
        letterSpacing: 2,
      ),
      dateOrder: DatePickerDateOrder.dmy,
      initialDateTime: DateTime.now(),
      maxDateTime: DateTime(2030),
      minDateTime: DateTime(2020),
      onSubmit: (index) {
        final DateTime selectedDate = index as DateTime;
        final formattedDate =
            "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";

        setState(() {
          dataController.text = formattedDate;
        });

        widget.onChangedDate(formattedDate);
      },

      bottomPickerTheme: BottomPickerTheme.temptingAzure,
      buttonSingleColor: ColorManager.primaryColor,
      displaySubmitButton: true,
    ).show(context);
  }

  @override
  Widget build(BuildContext context) {
    return TextFeildCustomer(
      onChanged: widget.onChangedDate,
      controller: dataController,
      validator: (value) {
        if (value == null || value.trim().isEmpty) {
          return TextValidateManager.fieldIsRequired;
        }
        return null;
      },
      onTap: () {
        openDatePicker(context);
      },
      labelText: TextManger.dateAddedLabel,
      hintText: TextManger.dateAddedHint,
      readOnly: true,
      suffixIcon: IconButton(
        onPressed: () {
          openDatePicker(context);
        },
        icon: Icon(
          Icons.calendar_month_rounded,
          color: ColorManager.primaryColor,
        ),
      ),
    );
  }
}
