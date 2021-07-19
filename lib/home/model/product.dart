import 'package:hive/hive.dart';

part 'product.g.dart';

@HiveType(typeId: 5)
class Product extends HiveObject {
  @HiveField(0)
  String? slNo;

  @HiveField(1)
  String? storyTime;

  @HiveField(2)
  String? story;

  @HiveField(3)
  String? storyType;

  @HiveField(4)
  String? storyImage;

  @HiveField(5)
  String? storyAdditionalImages;

  @HiveField(6)
  String? promoImage;

  @HiveField(7)
  int? orderQty;

  @HiveField(8)
  String? lastAddToCart;

  @HiveField(9)
  int? availableStock;

  @HiveField(10)
  String? myId;

  @HiveField(11)
  String? ezShopName;

  @HiveField(12)
  String? companyName;

  @HiveField(13)
  String? companyLogo;

  @HiveField(14)
  String? companyEmail;

  @HiveField(15)
  String? currencyCode;

  @HiveField(16)
  int? unitPrice;

  @HiveField(17)
  int? discountAmount;

  @HiveField(18)
  int? discountPercent;

  @HiveField(19)
  String? iMyID;

  @HiveField(20)
  String? shopName;

  @HiveField(21)
  String? shopLogo;

  @HiveField(22)
  String? shopLink;

  @HiveField(23)
  String? friendlyTimeDiff;

  Product(
      {this.slNo,
      this.storyTime,
      this.story,
      this.storyType,
      this.storyImage,
      this.storyAdditionalImages,
      this.promoImage,
      this.orderQty,
      this.lastAddToCart,
      this.availableStock,
      this.myId,
      this.ezShopName,
      this.companyName,
      this.companyLogo,
      this.companyEmail,
      this.currencyCode,
      this.unitPrice,
      this.discountAmount,
      this.discountPercent,
      this.iMyID,
      this.shopName,
      this.shopLogo,
      this.shopLink,
      this.friendlyTimeDiff});

  Product.fromJson(Map<String, dynamic> json) {
    slNo = json['slNo'];
    storyTime = json['storyTime'];
    story = json['story'];
    storyType = json['storyType'];
    storyImage = json['storyImage'];
    storyAdditionalImages = json['storyAdditionalImages'];
    promoImage = json['promoImage'];
    orderQty = json['orderQty'];
    lastAddToCart = json['lastAddToCart'];
    availableStock = json['availableStock'];
    myId = json['myId'];
    ezShopName = json['ezShopName'];
    companyName = json['companyName'];
    companyLogo = json['companyLogo'];
    companyEmail = json['companyEmail'];
    currencyCode = json['currencyCode'];
    unitPrice = json['unitPrice'];
    discountAmount = json['discountAmount'];
    discountPercent = json['discountPercent'];
    iMyID = json['iMyID'];
    shopName = json['shopName'];
    shopLogo = json['shopLogo'];
    shopLink = json['shopLink'];
    friendlyTimeDiff = json['friendlyTimeDiff'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slNo'] = this.slNo;
    data['storyTime'] = this.storyTime;
    data['story'] = this.story;
    data['storyType'] = this.storyType;
    data['storyImage'] = this.storyImage;
    data['storyAdditionalImages'] = this.storyAdditionalImages;
    data['promoImage'] = this.promoImage;
    data['orderQty'] = this.orderQty;
    data['lastAddToCart'] = this.lastAddToCart;
    data['availableStock'] = this.availableStock;
    data['myId'] = this.myId;
    data['ezShopName'] = this.ezShopName;
    data['companyName'] = this.companyName;
    data['companyLogo'] = this.companyLogo;
    data['companyEmail'] = this.companyEmail;
    data['currencyCode'] = this.currencyCode;
    data['unitPrice'] = this.unitPrice;
    data['discountAmount'] = this.discountAmount;
    data['discountPercent'] = this.discountPercent;
    data['iMyID'] = this.iMyID;
    data['shopName'] = this.shopName;
    data['shopLogo'] = this.shopLogo;
    data['shopLink'] = this.shopLink;
    data['friendlyTimeDiff'] = this.friendlyTimeDiff;
    return data;
  }
}
