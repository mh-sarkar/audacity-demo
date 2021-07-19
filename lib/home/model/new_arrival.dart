import 'package:hive/hive.dart';

part 'new_arrival.g.dart';

@HiveType(typeId: 3)
class NewArrival extends HiveObject {
  @HiveField(0)
  String? slNo;

  @HiveField(1)
  String? productName;

  @HiveField(2)
  String? shortDetails;

  @HiveField(3)
  String? productDescription;

  @HiveField(4)
  int? availableStock;

  @HiveField(5)
  int? orderQty;

  @HiveField(6)
  int? salesQty;

  @HiveField(7)
  int? orderAmount;

  @HiveField(8)
  int? salesAmount;

  @HiveField(9)
  int? discountPercent;

  @HiveField(10)
  int? discountAmount;

  @HiveField(11)
  int? unitPrice;

  @HiveField(12)
  String? productImage;

  @HiveField(13)
  String? sellerName;

  @HiveField(14)
  String? sellerProfilePhoto;

  @HiveField(15)
  String? sellerCoverPhoto;

  @HiveField(16)
  String? ezShopName;

  @HiveField(17)
  double? defaultPushScore;

  @HiveField(18)
  String? myProductVarId;

  NewArrival(
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

  NewArrival.fromJson(Map<String, dynamic> json) {
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
    defaultPushScore = json['defaultPushScore'].toDouble();
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
