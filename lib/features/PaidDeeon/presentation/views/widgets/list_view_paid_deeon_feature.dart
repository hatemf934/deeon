import 'package:deeon/features/PaidDeeon/presentation/views/widgets/paid_feature.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:flutter/material.dart';

class ListViewPaidDeeonFeature extends StatelessWidget {
  const ListViewPaidDeeonFeature({super.key, required this.deeonModel});
  final List<DeeonModel> deeonModel;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) {
        return PaidFeature(deeonModel: deeonModel[index]);
      },
      separatorBuilder: (context, index) {
        return SizedBox(height: MediaQuery.of(context).size.height * 0.020);
      },
      itemCount: deeonModel.length,
    );
  }
}
