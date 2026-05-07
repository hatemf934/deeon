import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/PaidDeeon/domin/repos/paid_deeon_repo.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';

class PaidDeeonRepoImpl extends PaidDeeonRepo {
  final HiveServices hiveServices;

  PaidDeeonRepoImpl({required this.hiveServices});
  @override
  Future<void> addPaidDeeon({
    required DeeonModel deeonModel,
    required String customerId,
  }) async {
    await hiveServices.addData(
      boxName: "$paidDeeonBox$customerId",
      data: deeonModel,
    );
  }

  @override
  List<DeeonModel> getAllPaidDeeons({required String customerId}) {
    return hiveServices.getAllData<DeeonModel>(
      boxName: "$paidDeeonBox$customerId",
    );
  }
}
