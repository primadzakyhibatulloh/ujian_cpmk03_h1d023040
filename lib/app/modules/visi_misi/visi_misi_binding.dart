import 'package:get/get.dart';
import 'visi_misi_controller.dart';

class VisiMisiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VisiMisiController>(() => VisiMisiController());
  }
}