// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ProductAdapter extends TypeAdapter<Product> {
  @override
  final int typeId = 5;

  @override
  Product read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Product(
      slNo: fields[0] as String?,
      storyTime: fields[1] as String?,
      story: fields[2] as String?,
      storyType: fields[3] as String?,
      storyImage: fields[4] as String?,
      storyAdditionalImages: fields[5] as String?,
      promoImage: fields[6] as String?,
      orderQty: fields[7] as int?,
      lastAddToCart: fields[8] as String?,
      availableStock: fields[9] as int?,
      myId: fields[10] as String?,
      ezShopName: fields[11] as String?,
      companyName: fields[12] as String?,
      companyLogo: fields[13] as String?,
      companyEmail: fields[14] as String?,
      currencyCode: fields[15] as String?,
      unitPrice: fields[16] as int?,
      discountAmount: fields[17] as int?,
      discountPercent: fields[18] as int?,
      iMyID: fields[19] as String?,
      shopName: fields[20] as String?,
      shopLogo: fields[21] as String?,
      shopLink: fields[22] as String?,
      friendlyTimeDiff: fields[23] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Product obj) {
    writer
      ..writeByte(24)
      ..writeByte(0)
      ..write(obj.slNo)
      ..writeByte(1)
      ..write(obj.storyTime)
      ..writeByte(2)
      ..write(obj.story)
      ..writeByte(3)
      ..write(obj.storyType)
      ..writeByte(4)
      ..write(obj.storyImage)
      ..writeByte(5)
      ..write(obj.storyAdditionalImages)
      ..writeByte(6)
      ..write(obj.promoImage)
      ..writeByte(7)
      ..write(obj.orderQty)
      ..writeByte(8)
      ..write(obj.lastAddToCart)
      ..writeByte(9)
      ..write(obj.availableStock)
      ..writeByte(10)
      ..write(obj.myId)
      ..writeByte(11)
      ..write(obj.ezShopName)
      ..writeByte(12)
      ..write(obj.companyName)
      ..writeByte(13)
      ..write(obj.companyLogo)
      ..writeByte(14)
      ..write(obj.companyEmail)
      ..writeByte(15)
      ..write(obj.currencyCode)
      ..writeByte(16)
      ..write(obj.unitPrice)
      ..writeByte(17)
      ..write(obj.discountAmount)
      ..writeByte(18)
      ..write(obj.discountPercent)
      ..writeByte(19)
      ..write(obj.iMyID)
      ..writeByte(20)
      ..write(obj.shopName)
      ..writeByte(21)
      ..write(obj.shopLogo)
      ..writeByte(22)
      ..write(obj.shopLink)
      ..writeByte(23)
      ..write(obj.friendlyTimeDiff);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
