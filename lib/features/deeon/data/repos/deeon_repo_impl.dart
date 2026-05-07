import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/domin/repos/deeon_repo.dart';

class DeeonRepoImpl extends DeeonRepo {
  final HiveServices hiveServices;

  DeeonRepoImpl({required this.hiveServices});
  @override
  Future<void> addDeeons({
    required DeeonModel deeonModel,
    required String customerId,
  }) async {
    await hiveServices.addData(
      boxName: "$deeonBox$customerId",
      data: deeonModel,
    );
  }

  @override
  List<DeeonModel> getAllDeeons({required String customerId}) {
    var deeonDate = hiveServices.getAllData<DeeonModel>(
      boxName: "$deeonBox$customerId",
    );
    return deeonDate;
  }
}
