import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/features/home/presentation/manager/customer_cubit/customer_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/customer_feature.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListViewCustomerFeature extends StatelessWidget {
  const ListViewCustomerFeature({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CustomerCubit, CustomerState>(
      builder: (context, state) {
        if (state is CustomerEmpty) {
          return Center(child: Icon(Icons.error));
        } else if (state is CustomerGettingSuccess) {
          return ListView.separated(
            itemBuilder: (context, index) {
              return Center(
                child: CustomerFeature(customerModel: state.customers[index]),
              );
            },
            separatorBuilder: (context, index) {
              return SizedBox(height: HeightManager.h15);
            },
            itemCount: state.customers.length,
          );
        }
        return SizedBox.shrink();
      },
    );
  }
}
