import 'package:deeon/features/deeon/data/model/deeon_model.dart';

abstract class DeeonRepo {
  Future<void> addDeeons({
    required DeeonModel deeonModel,
    required String customerId,
  });

  List<DeeonModel> getAllDeeons({required String customerId});
  Future<List<DeeonModel>> deleteDeeon({
    required int index,
    required String customerId,
  });
}
