import 'package:deeon/features/PaidDeeon/presentation/views/widgets/paid_feature.dart';
import 'package:flutter/material.dart';

class ListViewPaidDeeonFeature extends StatelessWidget {
  const ListViewPaidDeeonFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return PaidFeature();
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: MediaQuery.of(context).size.height * 0.020);
      },
      itemCount: 5,
    );
  }
}
