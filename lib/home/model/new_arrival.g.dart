// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'new_arrival.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class NewArrivalAdapter extends TypeAdapter<NewArrival> {
  @override
  final int typeId = 3;

  @override
  NewArrival read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return NewArrival(
      slNo: fields[0] as String?,
      productName: fields[1] as String?,
      shortDetails: fields[2] as String?,
      productDescription: fields[3] as String?,
      availableStock: fields[4] as int?,
      orderQty: fields[5] as int?,
      salesQty: fields[6] as int?,
      orderAmount: fields[7] as int?,
      salesAmount: fields[8] as int?,
      discountPercent: fields[9] as int?,
      discountAmount: fields[10] as int?,
      unitPrice: fields[11] as int?,
      productImage: fields[12] as String?,
      sellerName: fields[13] as String?,
      sellerProfilePhoto: fields[14] as String?,
      sellerCoverPhoto: fields[15] as String?,
      ezShopName: fields[16] as String?,
      defaultPushScore: fields[17] as double?,
      myProductVarId: fields[18] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, NewArrival obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.slNo)
      ..writeByte(1)
      ..write(obj.productName)
      ..writeByte(2)
      ..write(obj.shortDetails)
      ..writeByte(3)
      ..write(obj.productDescription)
      ..writeByte(4)
      ..write(obj.availableStock)
      ..writeByte(5)
      ..write(obj.orderQty)
      ..writeByte(6)
      ..write(obj.salesQty)
      ..writeByte(7)
      ..write(obj.orderAmount)
      ..writeByte(8)
      ..write(obj.salesAmount)
      ..writeByte(9)
      ..write(obj.discountPercent)
      ..writeByte(10)
      ..write(obj.discountAmount)
      ..writeByte(11)
      ..write(obj.unitPrice)
      ..writeByte(12)
      ..write(obj.productImage)
      ..writeByte(13)
      ..write(obj.sellerName)
      ..writeByte(14)
      ..write(obj.sellerProfilePhoto)
      ..writeByte(15)
      ..write(obj.sellerCoverPhoto)
      ..writeByte(16)
      ..write(obj.ezShopName)
      ..writeByte(17)
      ..write(obj.defaultPushScore)
      ..writeByte(18)
      ..write(obj.myProductVarId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NewArrivalAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
