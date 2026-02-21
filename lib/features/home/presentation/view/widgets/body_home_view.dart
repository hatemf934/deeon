import 'package:deeon/core/utils/styles.dart';
import 'package:deeon/core/utils/text_manger.dart';
import 'package:flutter/material.dart';

class BodyHomeView extends StatelessWidget {
  const BodyHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(TextManger.noFoundDeeon, style: Styles.textStyle25),
    );
  }
}
