import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart'; // Import definisi rute dan halaman

void main() {
  // Menjalankan aplikasi
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp( // Menggunakan GetMaterialApp (wajib untuk GetX)
      title: "Aplikasi Profil Kampus",
      
      // Menentukan rute awal saat aplikasi pertama kali dibuka
      initialRoute: AppPages.INITIAL, 
      
      // Mendaftarkan semua halaman (GetPage) yang telah didefinisikan
      getPages: AppPages.pages, 
      
      debugShowCheckedModeBanner: false,
    );
  }
}