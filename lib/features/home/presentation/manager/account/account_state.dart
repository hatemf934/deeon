part of 'account_cubit.dart';

@immutable
sealed class AccountState {}

final class AccountInitial extends AccountState {}

final class AccountGettingPicture extends AccountState {
  final AccountModel accountModel;

  AccountGettingPicture({required this.accountModel});
}

final class AccountEmpty extends AccountState {}
