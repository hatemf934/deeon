import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/radius_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/auth/presentation/view/widgets/custom_elveted_button.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_text_feild_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void showModelButtonSheetCustomer(
  BuildContext context, {
  CustomerModel? customer,
}) async {
  final nameController = TextEditingController(
    text: customer?.nameCustomer ?? '',
  );
  final phoneController = TextEditingController(text: customer?.phone ?? '');
  final dateController = TextEditingController(text: customer?.date ?? '');

  final GlobalKey<FormState> formkey = GlobalKey();
  showModalBottomSheet(
    context: context,
    isScrollControlled: true,
    backgroundColor: ColorManager.secondryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.r20),
      ),
    ),
    builder: (BuildContext ctx) {
      return BlocProvider.value(
        value: ctx.read<CustomerCubit>(),
        child: Form(
          key: formkey,
          child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.5,
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: PaddingManager.p16,
                vertical: PaddingManager.p8,
              ),
              child: Column(
                children: [
                  SizedBox(height: HeightManager.h20),
                  Text(
                    customer == null
                        ? TextManger.addNewCustomer
                        : TextManger.updateCustomer,
                    style: Styles.textStyle30.copyWith(
                      color: ColorManager.primaryColor,
                    ),
                  ),
                  SizedBox(height: HeightManager.h60),
                  ListTextFeildCustomer(
                    nameController: nameController,
                    phoneController: phoneController,
                    dateController: dateController,
                  ),
                  SizedBox(height: HeightManager.h20),
                  CustomElevatedButton(
                    text: customer == null
                        ? TextManger.addCustomer
                        : TextManger.editCustomer,
                    onPressed: () {
                      if (formkey.currentState!.validate()) {
                        final newCustomer = CustomerModel(
                          nameCustomer: nameController.text,
                          phone: phoneController.text,
                          date: dateController.text,
                        );
                        if (customer == null) {
                          ctx.read<CustomerCubit>().addCustomer(newCustomer);
                        } else {
                          ctx.read<CustomerCubit>().editCustomer(
                            oldCustomer: customer,
                            newCustomer: newCustomer,
                          );
                        }
                      }
                      Navigator.pop(context);
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
