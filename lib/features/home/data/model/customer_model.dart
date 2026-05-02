import 'package:deeon/features/home/domin/entity/customer_entity.dart';
import 'package:hive/hive.dart';

part 'customer_model.g.dart';

@HiveType(typeId: 0)
class CustomerModel extends CustomerEntity with HiveObjectMixin {
  @HiveField(0)
  final String nameCustomer;

  @HiveField(1)
  final String phone;

  @HiveField(2)
  final String date;

  CustomerModel({
    required this.nameCustomer,
    required this.phone,
    required this.date,
  }) : super(name: nameCustomer, phone: phone, date: date);
}
