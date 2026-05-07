// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deeon_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class DeeonModelAdapter extends TypeAdapter<DeeonModel> {
  @override
  final int typeId = 1;

  @override
  DeeonModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return DeeonModel(
      nameItem: fields[0] as String,
      priceItem: fields[1] as double,
      countItem: fields[2] as int,
      dateDeeon: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, DeeonModel obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.nameItem)
      ..writeByte(1)
      ..write(obj.priceItem)
      ..writeByte(2)
      ..write(obj.countItem)
      ..writeByte(3)
      ..write(obj.dateDeeon);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DeeonModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
