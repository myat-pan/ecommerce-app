import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get.dart';

class MasterController extends GetxController {
  static MasterController instance = Get.find();
  final FlutterSecureStorage storage = FlutterSecureStorage();
  Future<String?> getToken() async {
    String? value = await storage.read(key: 'token');
    return value ?? '';
  }
}
