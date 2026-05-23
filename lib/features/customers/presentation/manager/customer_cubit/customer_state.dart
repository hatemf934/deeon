part of 'customer_cubit.dart';

@immutable
sealed class CustomerState {}

final class CustomerInitial extends CustomerState {}

class CustomerGettingSuccess extends CustomerState {
  final List<CustomerModel> customers;

  CustomerGettingSuccess({required this.customers});
}

class CustomerEmpty extends CustomerState {}

class CustomerFailure extends CustomerState {
  final String error;
  CustomerFailure(this.error);
}
