import 'package:deeon/core/utils/height_manager.dart';
import 'package:deeon/features/home/presentation/view/widgets/body_home_view.dart';
import 'package:flutter/material.dart';

class ListViewCustomerFeature extends StatelessWidget {
  const ListViewCustomerFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return Center(child: CustomerFeature());
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: HeightManager.h15);
      },
      itemCount: 20,
    );
  }
}
