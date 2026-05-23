import 'package:hive_flutter/hive_flutter.dart';
part 'account_model.g.dart';

@HiveType(typeId: 2)
class AccountModel with HiveObjectMixin {
  @HiveField(0)
  final String proFilePicture;

  AccountModel({required this.proFilePicture});
}
