import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_view_customer_feature.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key, required this.customerModel});
  final List<CustomerModel> customerModel;
  @override
  Widget build(BuildContext context) {
    return ListViewCustomerFeature(customerModel: customerModel);
  }
}
