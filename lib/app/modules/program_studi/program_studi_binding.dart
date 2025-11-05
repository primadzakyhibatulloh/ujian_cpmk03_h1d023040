import 'package:get/get.dart';
import 'program_studi_controller.dart';

class ProgramStudiBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ProgramStudiController>(() => ProgramStudiController());
  }
}