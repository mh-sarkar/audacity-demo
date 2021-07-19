import 'package:hive/hive.dart';

part 'trending_seller.g.dart';

@HiveType(typeId: 1)
class TrendingSeller extends HiveObject {
  @HiveField(0)
  String? slNo;

  @HiveField(1)
  String? sellerName;

  @HiveField(2)
  String? sellerProfilePhoto;

  @HiveField(3)
  String? sellerItemPhoto;

  @HiveField(4)
  String? ezShopName;

  @HiveField(5)
  double? defaultPushScore;

  @HiveField(6)
  String? aboutCompany;

  @HiveField(7)
  int? allowCOD;

  @HiveField(8)
  String? division;

  @HiveField(9)
  String? subDivision;

  @HiveField(10)
  String? city;

  @HiveField(11)
  String? state;

  @HiveField(12)
  String? zipcode;

  @HiveField(13)
  String? country;

  @HiveField(14)
  String? currencyCode;

  @HiveField(15)
  int? orderQty;

  @HiveField(16)
  int? orderAmount;

  @HiveField(17)
  int? salesQty;

  @HiveField(18)
  int? salesAmount;

  @HiveField(19)
  int? highestDiscountPercent;

  @HiveField(20)
  String? lastAddToCart;

  @HiveField(21)
  String? lastAddToCartThatSold;

  TrendingSeller(
      {this.slNo,
      this.sellerName,
      this.sellerProfilePhoto,
      this.sellerItemPhoto,
      this.ezShopName,
      this.defaultPushScore,
      this.aboutCompany,
      this.allowCOD,
      this.division,
      this.subDivision,
      this.city,
      this.state,
      this.zipcode,
      this.country,
      this.currencyCode,
      this.orderQty,
      this.orderAmount,
      this.salesQty,
      this.salesAmount,
      this.highestDiscountPercent,
      this.lastAddToCart,
      this.lastAddToCartThatSold});

  TrendingSeller.fromJson(Map<String, dynamic> json) {
    slNo = json['slNo'];
    sellerName = json['sellerName'];
    sellerProfilePhoto = json['sellerProfilePhoto'];
    sellerItemPhoto = json['sellerItemPhoto'];
    ezShopName = json['ezShopName'];
    defaultPushScore = json['defaultPushScore'].toDouble();
    aboutCompany = json['aboutCompany'] == null ? "" : json['aboutCompany'];
    allowCOD = json['allowCOD'];
    division = json['division'] == null ? "" : json['division'];
    subDivision = json['subDivision'] == null ? "" : json['subDivision'];
    city = json['city'];
    state = json['state'];
    zipcode = json['zipcode'];
    country = json['country'];
    currencyCode = json['currencyCode'];
    orderQty = json['orderQty'];
    orderAmount = json['orderAmount'];
    salesQty = json['salesQty'];
    salesAmount = json['salesAmount'];
    highestDiscountPercent = json['highestDiscountPercent'];
    lastAddToCart = json['lastAddToCart'];
    lastAddToCartThatSold = json['lastAddToCartThatSold'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slNo'] = this.slNo;
    data['sellerName'] = this.sellerName;
    data['sellerProfilePhoto'] = this.sellerProfilePhoto;
    data['sellerItemPhoto'] = this.sellerItemPhoto;
    data['ezShopName'] = this.ezShopName;
    data['defaultPushScore'] = this.defaultPushScore;
    data['aboutCompany'] = this.aboutCompany;
    data['allowCOD'] = this.allowCOD;
    data['division'] = this.division;
    data['subDivision'] = this.subDivision;
    data['city'] = this.city;
    data['state'] = this.state;
    data['zipcode'] = this.zipcode;
    data['country'] = this.country;
    data['currencyCode'] = this.currencyCode;
    data['orderQty'] = this.orderQty;
    data['orderAmount'] = this.orderAmount;
    data['salesQty'] = this.salesQty;
    data['salesAmount'] = this.salesAmount;
    data['highestDiscountPercent'] = this.highestDiscountPercent;
    data['lastAddToCart'] = this.lastAddToCart;
    data['lastAddToCartThatSold'] = this.lastAddToCartThatSold;
    return data;
  }
}
