import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/deeon/data/model/deeon_model.dart';
import 'package:deeon/features/deeon/domin/repos/deeon_repo.dart';

class DeeonRepoImpl extends DeeonRepo {
  final HiveServices hiveServices;

  DeeonRepoImpl({required this.hiveServices});
  @override
  Future<void> addDeeons({required DeeonModel deeonModel}) async {
    await hiveServices.addData(boxName: deeonBox, data: deeonModel);
  }

  @override
  List<DeeonModel> getAllDeeons() {
    var deeonDate = hiveServices.getAllData<DeeonModel>(boxName: deeonBox);
    return deeonDate;
  }
}
