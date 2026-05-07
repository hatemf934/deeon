part of 'deeon_cubit.dart';

@immutable
sealed class DeeonState {}

final class DeeonInitial extends DeeonState {}

class DeeonGettingSuccess extends DeeonState {
  final List<DeeonModel> deeon;
  DeeonGettingSuccess({required this.deeon});
}

class DeeonFailure extends DeeonState {
  final String error;
  DeeonFailure(this.error);
}
