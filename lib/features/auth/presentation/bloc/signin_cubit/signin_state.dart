part of 'signin_cubit.dart';

@immutable
sealed class SigninState {}

final class SigninInitial extends SigninState {}

final class SignInSucsses extends SigninState {
  final UserEntity userEntity;
  SignInSucsses({required this.userEntity});
}

final class SignInFailure extends SigninState {
  final String errmessage;

  SignInFailure({required this.errmessage});
}

final class SignInLoading extends SigninState {}
