import 'package:get/get.dart';

// 1. SEMUA IMPORT HARUS DIDAHULUKAN
import '../modules/home/home_binding.dart';
import '../modules/home/home_view.dart';
import '../modules/kampus/kampus_binding.dart';
import '../modules/kampus/kampus_view.dart';
import '../modules/visi_misi/visi_misi_binding.dart';
import '../modules/visi_misi/visi_misi_view.dart';
import '../modules/program_studi/program_studi_binding.dart';
import '../modules/program_studi/program_studi_view.dart';
import '../modules/kontak/kontak_binding.dart';
import '../modules/kontak/kontak_view.dart';

// 2. DIREKTIF PART DITEMPATKAN PALING AKHIR
part 'app_routes.dart'; 

class AppPages {
  static const INITIAL = Routes.HOME;

  static final pages = [
    GetPage(
      name: Routes.HOME, 
      page: () => HomeView(), 
      binding: HomeBinding()
    ),
    GetPage(
      name: Routes.KAMPUS, 
      page: () => KampusView(), 
      binding: KampusBinding()
    ),
    GetPage(
      name: Routes.VISI_MISI, 
      page: () => VisiMisiView(), 
      binding: VisiMisiBinding()
    ),
    GetPage(
      name: Routes.PROG_STUDI, 
      page: () => ProgramStudiView(), 
      binding: ProgramStudiBinding()
    ),
    GetPage(
      name: Routes.KONTAK, 
      page: () => KontakView(), 
      binding: KontakBinding()
    ),
  ];
}