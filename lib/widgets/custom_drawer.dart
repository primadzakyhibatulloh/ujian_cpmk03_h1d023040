import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../app/routes/app_pages.dart'; 

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Aplikasi Kampus'),
            accountEmail: Text('Info Cepat Kampus'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(Icons.class_, color: Colors.blue),
            ),
          ),
          
          // Navigasi menggunakan ListTile (Sudah benar)
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('1. Home'),
            onTap: () {
              Get.back(); 
              // Sekarang Routes.HOME dapat diakses
              Get.offAllNamed(Routes.HOME); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.business),
            title: const Text('2. Profil Kampus'),
            onTap: () {
              Get.back();
              // Sekarang Routes.KAMPUS dapat diakses
              Get.toNamed(Routes.KAMPUS); 
            },
          ),
          // Lanjutkan dengan ListTile lainnya...
          
          // (Tambahkan ListTile untuk Visi&Misi, ProgramStudi, Kontak di sini)
          ListTile(
            leading: const Icon(Icons.lightbulb),
            title: const Text('3. Visi & Misi'),
            onTap: () {
              Get.back();
              Get.toNamed(Routes.VISI_MISI); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.menu_book),
            title: const Text('4. Program Studi'),
            onTap: () {
              Get.back();
              Get.toNamed(Routes.PROG_STUDI); 
            },
          ),
          ListTile(
            leading: const Icon(Icons.contact_phone),
            title: const Text('5. Kontak Kami'),
            onTap: () {
              Get.back();
              Get.toNamed(Routes.KONTAK); 
            },
          ),
        ],
      ),
    );
  }
}