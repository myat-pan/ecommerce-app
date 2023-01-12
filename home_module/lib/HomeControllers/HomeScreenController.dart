import 'package:get/get.dart';
import 'package:home_module/HomeModels/product_list.dart';
import 'package:network_module/services/cqapi.dart';

class HomeScreenController extends GetxController {
  var isLoading = true.obs;
  var productList = ProductList().obs;

  Future<bool?> fetchProductList() async {
    try {
      isLoading(true);
      final result = await CQAPI.fetchProductList();
      productList(result);
    } finally {
      isLoading(false);
    }
  }
}
