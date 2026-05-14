import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/deatils_deeon_feature.dart';
import 'package:deeon/features/home/data/model/customer_model.dart';
import 'package:flutter/material.dart';

class ListOfDeeon extends StatelessWidget {
  const ListOfDeeon({
    super.key,
    required this.deeonModel,
    required this.customerModel,
  });
  final List<DeeonModel> deeonModel;
  final CustomerModel customerModel;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p16),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return DetailsDeeonFeature(
            index: index,
            deeonModel: deeonModel[index],
            customerModel: customerModel,
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: size.height * 0.020);
        },
        itemCount: deeonModel.length,
      ),
    );
  }
}
