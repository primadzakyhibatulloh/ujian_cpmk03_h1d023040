import 'package:get/get.dart';
import 'kampus_controller.dart';

class KampusBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KampusController>(() => KampusController());
  }
}