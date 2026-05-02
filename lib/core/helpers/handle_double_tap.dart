import 'package:flutter/material.dart';

void handleDoubleTap(
  TransformationController transformationController,
  TapDownDetails? doubleTapDetails,
) {
  if (transformationController.value != Matrix4.identity()) {
    transformationController.value = Matrix4.identity();
  } else {
    final position = doubleTapDetails!.localPosition;
    transformationController.value = Matrix4.identity()
      ..translate(-position.dx * 1, -position.dy * 1)
      ..scale(3.0);
  }
}
