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

  @HiveField(3)
  final String id;

  CustomerModel({
    required this.nameCustomer,
    required this.phone,
    required this.date,
    String? id,
  }) : id = id ?? DateTime.now().millisecondsSinceEpoch.toString(),
       super(
         name: nameCustomer,
         phone: phone,
         date: date,
         id: id ?? DateTime.now().millisecondsSinceEpoch.toString(),
       );
}
