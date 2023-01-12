import 'dart:convert';
import 'package:home_module/HomeModels/product_list.dart';
import 'package:http/http.dart' as http;

class CQAPI {
  static const serverUrl = "https://sephora.p.rapidapi.com/";
  static const API_KEY = "237210198dmsh87a1e782af93a10p1f04bfjsnd5e63b031d74";
  static const API_HOST = "sephora.p.rapidapi.com";

  static Future<ProductList?> fetchProductList() async {
    var _url = serverUrl +
        "products/list?categoryId=cat150006&pageSize=60&currentPage=1";
    final res = await http.get(Uri.parse(_url),
        headers: {'X-RapidAPI-Key': API_KEY, 'X-RapidAPI-Host': API_HOST});
    if (res.statusCode == 200) {
      final result = json.decode(res.body);
      return ProductList(
        products: result['products'].map<Product>((item) {
          return Product(
              brandName: item['brandName'],
              displayName: item['displayName'],
              heroImage: item['heroImage'],
              rating: item['rating'],
              reviews: item['reviews']);
        }).toList(),
      );
    }
  }
}
