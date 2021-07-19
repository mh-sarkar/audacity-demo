// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrendingProductAdapter extends TypeAdapter<TrendingProduct> {
  @override
  final int typeId = 2;

  @override
  TrendingProduct read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrendingProduct(
      slNo: fields[0] as String?,
      productName: fields[2] as String?,
      shortDetails: fields[3] as String?,
      productDescription: fields[4] as String?,
      availableStock: fields[5] as int?,
      orderQty: fields[6] as int?,
      salesQty: fields[7] as int?,
      orderAmount: fields[8] as int?,
      salesAmount: fields[9] as int?,
      discountPercent: fields[10] as int?,
      discountAmount: fields[11] as int?,
      unitPrice: fields[12] as int?,
      productImage: fields[13] as String?,
      sellerName: fields[14] as String?,
      sellerProfilePhoto: fields[15] as String?,
      sellerCoverPhoto: fields[16] as String?,
      ezShopName: fields[17] as String?,
      defaultPushScore: fields[18] as int?,
      myProductVarId: fields[19] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TrendingProduct obj) {
    writer
      ..writeByte(19)
      ..writeByte(0)
      ..write(obj.slNo)
      ..writeByte(2)
      ..write(obj.productName)
      ..writeByte(3)
      ..write(obj.shortDetails)
      ..writeByte(4)
      ..write(obj.productDescription)
      ..writeByte(5)
      ..write(obj.availableStock)
      ..writeByte(6)
      ..write(obj.orderQty)
      ..writeByte(7)
      ..write(obj.salesQty)
      ..writeByte(8)
      ..write(obj.orderAmount)
      ..writeByte(9)
      ..write(obj.salesAmount)
      ..writeByte(10)
      ..write(obj.discountPercent)
      ..writeByte(11)
      ..write(obj.discountAmount)
      ..writeByte(12)
      ..write(obj.unitPrice)
      ..writeByte(13)
      ..write(obj.productImage)
      ..writeByte(14)
      ..write(obj.sellerName)
      ..writeByte(15)
      ..write(obj.sellerProfilePhoto)
      ..writeByte(16)
      ..write(obj.sellerCoverPhoto)
      ..writeByte(17)
      ..write(obj.ezShopName)
      ..writeByte(18)
      ..write(obj.defaultPushScore)
      ..writeByte(19)
      ..write(obj.myProductVarId);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrendingProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
