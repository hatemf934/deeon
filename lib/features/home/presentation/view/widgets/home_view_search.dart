import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/features/home/presentation/manager/search/search_cubit.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:deeon/features/home/presentation/view/widgets/list_view_customer_feature.dart';
import 'package:deeon/features/home/presentation/view/widgets/search_app_customer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeViewSearch extends StatelessWidget {
  const HomeViewSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primaryColor,
      appBar: SearchAppBarCustomer(),
      body: BlocBuilder<SearchCubit, SearchState>(
        builder: (context, state) {
          if (state is SearchNoResult) {
            return Center(
              child: Text(
                TextManger.noReuslt,
                style: Styles.textStyle25.copyWith(
                  color: ColorManager.white70Color,
                ),
              ),
            );
          }
          if (state is SearchCustomer) {
            return ListViewCustomerFeature(customerModel: state.customerModel);
          }
          return BodyHomeView();
        },
      ),
    );
  }
}
