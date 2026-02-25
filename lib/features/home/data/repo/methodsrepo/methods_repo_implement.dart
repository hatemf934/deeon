import 'package:deeon/features/home/data/repo/methodsrepo/methods_repo.dart';
import 'package:flutter/material.dart';

class MethodsRepoImplement extends MethodsRepo {
  @override
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
}
