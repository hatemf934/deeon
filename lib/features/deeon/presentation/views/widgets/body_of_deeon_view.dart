import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:deeon/features/PaidDeeon/presentation/views/paid_deeon_view.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/buttons_deeon_view.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/details_customer.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/list_of_deeon.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';

class BodyOfDeeonView extends StatefulWidget {
  const BodyOfDeeonView({super.key});

  @override
  State<BodyOfDeeonView> createState() => _BodyOfDeeonViewState();
}

class _BodyOfDeeonViewState extends State<BodyOfDeeonView> {
  List<DeeonModel> deeonModel = [];
  @override
  Widget build(BuildContext context) {
    void addDeeon(DeeonModel deeon) {
      setState(() {
        deeonModel.add(deeon);
      });
    }

    CustomerModel customerModel =
        ModalRoute.of(context)!.settings.arguments as CustomerModel;
    return Column(
      children: [
        DetailsCustomer(customerModel: customerModel),
        Divider(
          endIndent: HeightManager.h20,
          height: WidthManager.w40,
          indent: HeightManager.h20,
          thickness: 3,
          color: ColorManager.secondryColor,
        ),
        Text(
          TextManger.deeeons,
          style: Styles.textStyle30.copyWith(color: ColorManager.secondryColor),
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
        Expanded(child: ListOfDeeon(deeonModel: deeonModel)),
        Divider(
          endIndent: HeightManager.h20,
          height: WidthManager.w40,
          indent: HeightManager.h20,
          thickness: 3,
          color: ColorManager.secondryColor,
        ),
        ButtonsDeeonView(
          ontap: () {
            Navigator.pushNamed(
              context,
              PaidDeeonView.id,
              arguments: deeonModel,
            );
          },
          onAddDeeon: addDeeon,
        ),
        SizedBox(height: MediaQuery.of(context).size.height * 0.010),
      ],
    );
  }
}
