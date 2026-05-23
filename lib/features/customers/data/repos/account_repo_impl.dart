import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/customers/data/model/account_model.dart';
import 'package:deeon/features/customers/domin/repos/account_repo.dart';

class AccountRepoImpl extends AccountRepo {
  final HiveServices hiveServices;

  AccountRepoImpl({required this.hiveServices});
  @override
  AccountModel getSingleAccount({required String userId}) {
    var account = hiveServices.getSingleData(boxName: "$pictureBox$userId");
    return account;
  }

  @override
  Future<void> addAccount({
    required String userId,
    required AccountModel account,
  }) async {
    {
      await hiveServices.addSingleData(
        boxName: "$pictureBox$userId",
        data: account,
      );
    }
  }

  @override
  Future<void> deleteAccount({required String userId}) async {
    await hiveServices.deleteSingleData(boxName: "$pictureBox$userId");
  }
}
