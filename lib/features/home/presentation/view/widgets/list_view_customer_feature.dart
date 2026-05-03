import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/view/widgets/customer_feature.dart';
import 'package:flutter/material.dart';

class ListViewCustomerFeature extends StatelessWidget {
  const ListViewCustomerFeature({super.key, required this.customerModel});
  final List<CustomerModel> customerModel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Center(
          child: CustomerFeature(
            index: index,
            customerModel: customerModel[index],
          ),
        );
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: HeightManager.h15);
      },
      itemCount: customerModel.length,
    );
  }
}
