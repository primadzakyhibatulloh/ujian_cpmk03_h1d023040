import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home_controller.dart';
import '../../../widgets/custom_drawer.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('1. Home')), // Poin 6: Judul
      drawer: CustomDrawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Gambar/Icon - Logo UNSOED
              Image.asset(
                'assets/images/logo_unsoed.png', 
                height: 120, 
                width: 120,
              ),
              const SizedBox(height: 20),
              // Judul dan Nama Kampus
              const Text(
                'Universitas Jenderal Soedirman', // Nama Kampus
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w800, color: Colors.deepPurple),
                textAlign: TextAlign.center,
              ),
              const Text(
                'Pusat Pengembangan Ilmu Pengetahuan dan Inovasi', // TEKS BARU
                style: TextStyle(fontSize: 18, color: Colors.grey),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              // Poin 6: Isi Deskripsi (Diperbarui tanpa kata kunci 'perdesaan')
              const Text(
                'Selamat datang di portal informasi resmi Universitas Jenderal Soedirman (UNSOED). Kampus yang berlokasi di Purwokerto ini berkomitmen untuk menghasilkan lulusan unggul dan menjadi pusat riset yang diakui secara global.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}