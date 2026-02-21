import 'package:deeon/core/utils/color_manager.dart';
import 'package:deeon/core/utils/padding_manager.dart';
import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:deeon/core/utils/width_manager.dart';
import 'package:flutter/material.dart';

class RowSignOut extends StatelessWidget {
  const RowSignOut({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: PaddingManager.p8),
      child: Row(
        children: [
          Icon(Icons.logout, color: ColorManager.redColor),
          SizedBox(width: WidthManager.w10),
          TextButton(
            onPressed: () {},
            child: Text(
              TextManger.signOut,
              style: Styles.textStyle18.copyWith(color: ColorManager.redColor),
            ),
          ),
        ],
      ),
    );
  }
}
