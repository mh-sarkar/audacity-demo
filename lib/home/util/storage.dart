import 'package:audacity_demo/home/config/global.dart';
import 'package:audacity_demo/home/model/new_arrival.dart';
import 'package:audacity_demo/home/model/new_shop.dart';
import 'package:audacity_demo/home/model/product.dart';
import 'package:audacity_demo/home/model/trending_product.dart';
import 'package:audacity_demo/home/model/trending_seller.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Storage {
  static final String keyTrendingSeller = 'TRENDING_SELLER';
  static final String keyTrendingProduct = 'TRENDING_PRODUCT';
  static final String keyNewArrival = 'NEW_ARRIVAL';
  static final String keyNewShop = 'NEW_SHOP';
  static final String keyProduct = 'PRODUCT';

  static Future<void> setupHive(
      {List<TypeAdapter> adapterList = const []}) async {
    // Init hive
    await Hive.initFlutter();

    // register adapter
    Hive.registerAdapter(TrendingSellerAdapter());
    Hive.registerAdapter(TrendingProductAdapter());
    Hive.registerAdapter(NewArrivalAdapter());
    Hive.registerAdapter(NewShopAdapter());
    Hive.registerAdapter(ProductAdapter());
    adapterList.forEach((element) {
      Hive.registerAdapter(element);
    });

    // setup global box
    globalStorageBox = await Hive.openBox('app');
  }

  static void setKeyValue(String key, dynamic value) {
    globalStorageBox.put(key, value);
  }

  static dynamic getKeyValue(String key) {
    return globalStorageBox.get(key);
  }
}
