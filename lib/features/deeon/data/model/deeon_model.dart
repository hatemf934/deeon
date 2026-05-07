import 'package:hive/hive.dart';

part 'deeon_model.g.dart';

@HiveType(typeId: 1)
class DeeonModel with HiveObjectMixin {
  @HiveField(0)
  final String nameItem;
  @HiveField(1)
  final double priceItem;
  @HiveField(2)
  final int countItem;
  @HiveField(3)
  final String dateDeeon;

  DeeonModel({
    required this.nameItem,
    required this.priceItem,
    required this.countItem,
    required this.dateDeeon,
  });

  DeeonModel copyWith({
    String? nameItem,
    double? priceItem,
    int? countItem,
    String? dateDeeon,
  }) {
    return DeeonModel(
      nameItem: nameItem ?? this.nameItem,
      priceItem: priceItem ?? this.priceItem,
      countItem: countItem ?? this.countItem,
      dateDeeon: dateDeeon ?? this.dateDeeon,
    );
  }
}
