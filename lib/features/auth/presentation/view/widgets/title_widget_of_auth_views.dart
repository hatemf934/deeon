import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleWidgetOfAuthViews extends StatelessWidget {
  const TitleWidgetOfAuthViews({super.key, required this.textTitle});
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(textTitle, style: Styles.textStyle30),
        Spacer(flex: 2),
      ],
    );
  }
}
