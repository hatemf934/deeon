import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_text_feild_customer.dart';
import 'package:flutter/material.dart';

void showModelButtonSheetCustomer(BuildContext context) async {
  final GlobalKey<FormState> formkey = GlobalKey();
  showModalBottomSheet(
    context: context,
    backgroundColor: ColorManager.secondryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.r20),
      ),
    ),
    builder: (BuildContext context) {
      return Form(
        key: formkey,
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.5,
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: PaddingManager.p16,
              vertical: PaddingManager.p8,
            ),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).unfocus();
              },
              child: Column(
                children: [
                  Text(
                    TextManger.addNewCustomer,
                    style: Styles.textStyle30.copyWith(
                      color: ColorManager.primaryColor,
                    ),
                  ),
                  SizedBox(height: HeightManager.h20),
                  ListTextFeildCustomer(),
                  SizedBox(height: HeightManager.h20),
                  CustomElevatedButton(
                    text: TextManger.addCustomer,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}
