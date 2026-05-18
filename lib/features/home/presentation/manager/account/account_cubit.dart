import 'package:bloc/bloc.dart';
import 'package:deeon/constant.dart';
import 'package:deeon/core/services/hive_services.dart';
import 'package:deeon/features/home/data/model/account_model.dart';
import 'package:deeon/features/home/data/repos/account_repo_impl.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:meta/meta.dart';

part 'account_state.dart';

class AccountCubit extends Cubit<AccountState> {
  AccountCubit() : super(AccountInitial()) {
    openBox();
  }
  String get userId => FirebaseAuth.instance.currentUser!.uid;
  AccountModel? accounts;

  Future<void> openBox() async {
    if (!Hive.isBoxOpen("$pictureBox$userId")) {
      await Hive.openBox<AccountModel>("$pictureBox$userId");
    }
    displayAccount();
  }

  void displayAccount() {
    try {
      accounts = AccountRepoImpl(
        hiveServices: HiveServices(),
      ).getSingleAccount(userId: userId);
      if (accounts == null) {
        emit(AccountEmpty());
      } else {
        emit(AccountGettingPicture(accountModel: accounts!));
      }
    } catch (e) {
      emit(AccountEmpty());
    }
  }

  Future<void> addAccount(XFile image) async {
    final account = AccountModel(proFilePicture: image.path);
    await AccountRepoImpl(
      hiveServices: HiveServices(),
    ).addAccount(userId: userId, account: account);
    emit(AccountGettingPicture(accountModel: account));
  }

  Future<void> deleteAccount() async {
    await AccountRepoImpl(
      hiveServices: HiveServices(),
    ).deleteAccount(userId: userId);
    emit(AccountEmpty());
  }
}
