import 'package:deeon/features/home/data/model/account_model.dart';

abstract class AccountRepo {
  AccountModel getSingleAccount({required String userId});
  Future<void> addAccount({
    required String userId,
    required AccountModel account,
  });
}
