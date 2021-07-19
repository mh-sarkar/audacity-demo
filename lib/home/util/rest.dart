import 'dart:convert';

import 'package:audacity_demo/home/config/global.dart';
import 'package:audacity_demo/home/model/new_arrival.dart';
import 'package:audacity_demo/home/model/new_shop.dart';
import 'package:audacity_demo/home/model/product.dart';
import 'package:audacity_demo/home/model/trending_product.dart';
import 'package:audacity_demo/home/model/trending_seller.dart';
import 'package:audacity_demo/home/util/storage.dart';
import 'package:http/http.dart' as http;

enum DataType {
  TrendingSellers,
  TrendingProducts,
  NewArrivals,
  NewShops,
  Products,
}

class Rest {
  static final String urlPrefix = restApiEndPoint;

  static String _setEndpoint(DataType dataType) {
    var url = urlPrefix;

    switch (dataType) {
      case DataType.TrendingSellers:
        url = url + '/trending_seller';
        break;

      case DataType.TrendingProducts:
        url = url + '/trendingProducts';
        break;

      case DataType.NewArrivals:
        url = url + '/newArrivals';
        break;

      case DataType.NewShops:
        url = url + '/newShops';
        break;

      case DataType.Products:
        url = url + '/stories';
        break;
    }

    return url;
  }

  static Future<List> getData(DataType dataType) async {
    var url = urlPrefix + _setEndpoint(dataType);
    try {
      final response = await http.get(Uri.parse(url));
      globalLogger.d(url);
      final jsonData = jsonDecode(response.body) as List;
      return jsonData;
    } catch (e) {
      throw e;
    }
  }

  static Future<List<TrendingSeller>> getTrendingSellerData() async {
    try {
      final data = await getData(DataType.TrendingSellers);
      final trendingSellers = (data[1] as List)
          .map((trendingSellersJson) =>
              TrendingSeller.fromJson(trendingSellersJson))
          .toList();
      Storage.setKeyValue(Storage.keyTrendingSeller, trendingSellers);
      return trendingSellers;
    } catch (e) {
      throw e;
    }
  }

  static Future<List<TrendingProduct>> getTrendingProductData() async {
    try {
      final data = await getData(DataType.TrendingProducts);
      final trendingProducts = (data[2] as List)
          .map((trendingProductsJson) =>
              TrendingProduct.fromJson(trendingProductsJson))
          .toList();

      Storage.setKeyValue(Storage.keyTrendingProduct, trendingProducts);
      return trendingProducts;
    } catch (e) {
      throw e;
    }
  }

  static Future<List<NewArrival>> getNewArrivalData() async {
    try {
      final data = await getData(DataType.NewArrivals);
      final newArrivals = (data[3] as List)
          .map((newArrivalsJson) => NewArrival.fromJson(newArrivalsJson))
          .toList();
      Storage.setKeyValue(Storage.keyNewArrival, newArrivals);
      return newArrivals;
    } catch (e) {
      throw e;
    }
  }

  static Future<List<NewShop>> getNewShopData() async {
    try {
      final data = await getData(DataType.NewShops);
      final newShops = (data[5] as List)
          .map((newShopsJson) => NewShop.fromJson(newShopsJson))
          .toList();
      Storage.setKeyValue(Storage.keyNewShop, newShops);
      return newShops;
    } catch (e) {
      throw e;
    }
  }

  static Future<List<Product>> getProductData() async {
    try {
      final data = await getData(DataType.Products);
      final products = (data[8] as List)
          .map((productsJson) => Product.fromJson(productsJson))
          .toList();

      Storage.setKeyValue(Storage.keyProduct, products);
      return products;
    } catch (e) {
      throw e;
    }
  }
}
