part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchShow extends SearchState {}

final class SearchNoResult extends SearchState {}

final class SearchCustomer extends SearchState {
  final List<CustomerModel> customerModel;

  SearchCustomer({required this.customerModel});
}
