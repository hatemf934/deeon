part of 'signup_cubit.dart';

@immutable
sealed class SignupState {}

final class SignupInitial extends SignupState {}

final class SignupSucsses extends SignupState {
  final UserEntity userEntity;
  SignupSucsses({required this.userEntity});
}

final class SignupFailure extends SignupState {
  final String errmessage;

  SignupFailure({required this.errmessage});
}

final class SignupLoading extends SignupState {}
