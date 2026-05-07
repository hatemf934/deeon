import 'package:deeon/features/deeon/data/model/deeon_model.dart';

abstract class DeeonRepo {
  Future<void> addDeeons({required DeeonModel deeonModel});

  List<DeeonModel> getAllDeeons();
}
