// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trending_seller.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TrendingSellerAdapter extends TypeAdapter<TrendingSeller> {
  @override
  final int typeId = 1;

  @override
  TrendingSeller read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TrendingSeller(
      slNo: fields[0] as String?,
      sellerName: fields[1] as String?,
      sellerProfilePhoto: fields[2] as String?,
      sellerItemPhoto: fields[3] as String?,
      ezShopName: fields[4] as String?,
      defaultPushScore: fields[5] as double?,
      aboutCompany: fields[6] as String?,
      allowCOD: fields[7] as int?,
      division: fields[8] as String?,
      subDivision: fields[9] as String?,
      city: fields[10] as String?,
      state: fields[11] as String?,
      zipcode: fields[12] as String?,
      country: fields[13] as String?,
      currencyCode: fields[14] as String?,
      orderQty: fields[15] as int?,
      orderAmount: fields[16] as int?,
      salesQty: fields[17] as int?,
      salesAmount: fields[18] as int?,
      highestDiscountPercent: fields[19] as int?,
      lastAddToCart: fields[20] as String?,
      lastAddToCartThatSold: fields[21] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, TrendingSeller obj) {
    writer
      ..writeByte(22)
      ..writeByte(0)
      ..write(obj.slNo)
      ..writeByte(1)
      ..write(obj.sellerName)
      ..writeByte(2)
      ..write(obj.sellerProfilePhoto)
      ..writeByte(3)
      ..write(obj.sellerItemPhoto)
      ..writeByte(4)
      ..write(obj.ezShopName)
      ..writeByte(5)
      ..write(obj.defaultPushScore)
      ..writeByte(6)
      ..write(obj.aboutCompany)
      ..writeByte(7)
      ..write(obj.allowCOD)
      ..writeByte(8)
      ..write(obj.division)
      ..writeByte(9)
      ..write(obj.subDivision)
      ..writeByte(10)
      ..write(obj.city)
      ..writeByte(11)
      ..write(obj.state)
      ..writeByte(12)
      ..write(obj.zipcode)
      ..writeByte(13)
      ..write(obj.country)
      ..writeByte(14)
      ..write(obj.currencyCode)
      ..writeByte(15)
      ..write(obj.orderQty)
      ..writeByte(16)
      ..write(obj.orderAmount)
      ..writeByte(17)
      ..write(obj.salesQty)
      ..writeByte(18)
      ..write(obj.salesAmount)
      ..writeByte(19)
      ..write(obj.highestDiscountPercent)
      ..writeByte(20)
      ..write(obj.lastAddToCart)
      ..writeByte(21)
      ..write(obj.lastAddToCartThatSold);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TrendingSellerAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
