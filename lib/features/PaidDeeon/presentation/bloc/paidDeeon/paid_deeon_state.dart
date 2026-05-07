part of 'paid_deeon_cubit.dart';

@immutable
sealed class PaidDeeonState {}

final class PaidDeeonInitial extends PaidDeeonState {}

class DeeonPaidSuccess extends PaidDeeonState {
  final List<DeeonModel> deeon;
  DeeonPaidSuccess({required this.deeon});
}
