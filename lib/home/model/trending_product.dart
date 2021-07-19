import 'package:hive/hive.dart';

part 'trending_product.g.dart';

@HiveType(typeId: 2)
class TrendingProduct extends HiveObject {
  @HiveField(0)
  String? slNo;

  @HiveField(2)
  String? productName;

  @HiveField(3)
  String? shortDetails;

  @HiveField(4)
  String? productDescription;

  @HiveField(5)
  int? availableStock;

  @HiveField(6)
  int? orderQty;

  @HiveField(7)
  int? salesQty;

  @HiveField(8)
  int? orderAmount;

  @HiveField(9)
  int? salesAmount;

  @HiveField(10)
  int? discountPercent;

  @HiveField(11)
  int? discountAmount;

  @HiveField(12)
  int? unitPrice;

  @HiveField(13)
  String? productImage;

  @HiveField(14)
  String? sellerName;

  @HiveField(15)
  String? sellerProfilePhoto;

  @HiveField(16)
  String? sellerCoverPhoto;

  @HiveField(17)
  String? ezShopName;

  @HiveField(18)
  int? defaultPushScore;

  @HiveField(19)
  String? myProductVarId;

  TrendingProduct(
      {this.slNo,
      this.productName,
      this.shortDetails,
      this.productDescription,
      this.availableStock,
      this.orderQty,
      this.salesQty,
      this.orderAmount,
      this.salesAmount,
      this.discountPercent,
      this.discountAmount,
      this.unitPrice,
      this.productImage,
      this.sellerName,
      this.sellerProfilePhoto,
      this.sellerCoverPhoto,
      this.ezShopName,
      this.defaultPushScore,
      this.myProductVarId});

  TrendingProduct.fromJson(Map<String, dynamic> json) {
    slNo = json['slNo'];
    productName = json['productName'];
    shortDetails = json['shortDetails'];
    productDescription = json['productDescription'];
    availableStock = json['availableStock'];
    orderQty = json['orderQty'];
    salesQty = json['salesQty'];
    orderAmount = json['orderAmount'];
    salesAmount = json['salesAmount'];
    discountPercent = json['discountPercent'];
    discountAmount = json['discountAmount'];
    unitPrice = json['unitPrice'];
    productImage = json['productImage'];
    sellerName = json['sellerName'];
    sellerProfilePhoto = json['sellerProfilePhoto'];
    sellerCoverPhoto = json['sellerCoverPhoto'];
    ezShopName = json['ezShopName'];
    defaultPushScore = json['defaultPushScore'];
    myProductVarId = json['myProductVarId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slNo'] = this.slNo;
    data['productName'] = this.productName;
    data['shortDetails'] = this.shortDetails;
    data['productDescription'] = this.productDescription;
    data['availableStock'] = this.availableStock;
    data['orderQty'] = this.orderQty;
    data['salesQty'] = this.salesQty;
    data['orderAmount'] = this.orderAmount;
    data['salesAmount'] = this.salesAmount;
    data['discountPercent'] = this.discountPercent;
    data['discountAmount'] = this.discountAmount;
    data['unitPrice'] = this.unitPrice;
    data['productImage'] = this.productImage;
    data['sellerName'] = this.sellerName;
    data['sellerProfilePhoto'] = this.sellerProfilePhoto;
    data['sellerCoverPhoto'] = this.sellerCoverPhoto;
    data['ezShopName'] = this.ezShopName;
    data['defaultPushScore'] = this.defaultPushScore;
    data['myProductVarId'] = this.myProductVarId;
    return data;
  }
}
