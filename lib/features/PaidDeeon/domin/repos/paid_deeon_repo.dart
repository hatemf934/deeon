import 'package:deeon/features/debts/data/model/deeon_model.dart';

abstract class PaidDeeonRepo {
  Future<void> addPaidDeeon({
    required DeeonModel deeonModel,
    required String customerId,
  });
  List<DeeonModel> getAllPaidDeeons({required String customerId});
}
