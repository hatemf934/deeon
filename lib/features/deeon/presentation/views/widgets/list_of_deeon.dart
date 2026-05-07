import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/presentation/views/widgets/deatils_deeon_feature.dart';
import 'package:flutter/material.dart';

class ListOfDeeon extends StatelessWidget {
  const ListOfDeeon({super.key, required this.deeonModel});
  final List<DeeonModel> deeonModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: PaddingManager.p16),
      child: ListView.separated(
        itemBuilder: (context, index) {
          return DetailsDeeonFeature(
            index: index,
            deeonModel: deeonModel[index],
          );
        },
        separatorBuilder: (context, index) {
          return SizedBox(height: MediaQuery.of(context).size.height * 0.020);
        },
        itemCount: deeonModel.length,
      ),
    );
  }
}
