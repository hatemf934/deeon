import 'package:deeon/core/helpers/form_validate.dart';
import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/bloc/deeon/deeon_cubit.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/row_adding_buttons_item.dart';
import 'package:deeon/features/home/presentation/view/widgets/calender_text_feild.dart';
import 'package:deeon/features/home/presentation/view/widgets/text_feild_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyOfShowButtonSheetDeeon extends StatefulWidget {
  const BodyOfShowButtonSheetDeeon({super.key});
  @override
  State<BodyOfShowButtonSheetDeeon> createState() =>
      _BodyOfShowButtonSheetDeeonState();
}

class _BodyOfShowButtonSheetDeeonState
    extends State<BodyOfShowButtonSheetDeeon> {
  final TextEditingController dataController = TextEditingController();
  final TextEditingController nameItemController = TextEditingController();
  double price = 0.0;
  int count = 1;
  final GlobalKey<FormState> formkey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formkey,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: PaddingManager.p16,
          vertical: PaddingManager.p8,
        ),
        child: Column(
          children: [
            Text(
              TextManger.addNewDeeon,
              style: Styles.textStyle30.copyWith(
                color: ColorManager.primaryColor,
              ),
            ),
            Spacer(),
            RowAddingButtonsItems(
              nameItemController: nameItemController,
              onCountChanged: (value) => setState(() {
                count = value;
              }),
              count: count,
            ),
            Spacer(),
            TextFeildItem(
              onChanged: (value) => price = value,
              validator: (value) => FormValidate().validateEnterNumber(value),
              labelText: TextManger.itemPrice,
              hintText: TextManger.itemPrice,
            ),
            Spacer(),
            CalenderTextFeild(dataController: dataController),
            Spacer(),
            CustomElevatedButton(
              text: TextManger.addDeeon,
              onPressed: () {
                if (formkey.currentState!.validate()) {
                  final deeon = DeeonModel(
                    nameItem: nameItemController.text,
                    priceItem: price,
                    countItem: count,
                    dateDeeon: dataController.text,
                  );
                  BlocProvider.of<DeeonCubit>(
                    context,
                  ).addDeeonDate(deeonModel: deeon);
                  Navigator.pop(context);
                }
              },
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
