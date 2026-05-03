import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_view_customer_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCubit, CustomerState>(
      builder: (context, state) {
        if (state is CustomerEmpty) {
          return Center(child: Text('No Customers Added Yet'));
        } else if (state is CustomerGettingSuccess) {
          return ListViewCustomerFeature(customerModel: state.customers);
        }
        return SizedBox.shrink();
      },
    );
  }
}
