import 'package:deeon/features/customers/data/model/account_model.dart';

abstract class AccountRepo {
  AccountModel getSingleAccount({required String userId});
  Future<void> addAccount({
    required String userId,
    required AccountModel account,
  });

  Future<void> deleteAccount({required String userId});
}
