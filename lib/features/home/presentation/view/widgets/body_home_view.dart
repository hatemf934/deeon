import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
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
          Center(
            child: Text(
              TextManger.noCustomers,
              style: Styles.textStyle25.copyWith(
                color: ColorManager.white70Color,
              ),
            ),
          );
        } else if (state is CustomerGettingSuccess) {
          return ListViewCustomerFeature(customerModel: state.customers);
        }
        return SizedBox.shrink();
      },
    );
  }
}
