import 'package:deeon/core/utils/styles.dart';
import 'package:flutter/material.dart';

class TitleWidgetOfAuthViews extends StatelessWidget {
  const TitleWidgetOfAuthViews({super.key, required this.textTitle});
  final String textTitle;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.25,
      child: Center(child: Text(textTitle, style: Styles.textStyle30)),
    );
  }
}
