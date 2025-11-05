import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'program_studi_controller.dart';
import '../../../widgets/custom_drawer.dart';

class ProgramStudiView extends GetView<ProgramStudiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('4. Program Studi')), // Poin 6: Judul
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar/Ikon (Menggunakan AspectRatio untuk tampilan desktop yang baik)
            AspectRatio(
              aspectRatio: 16 / 9, 
              child: Container(
                width: double.infinity,
                color: Colors.deepPurple.shade100,
                alignment: Alignment.center,
                child: Image.asset(
                  'assets/images/informatika.jpg', 
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Pilihan Program Studi Unggulan UNSOED', 
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)
                  ),
                  const SizedBox(height: 10),
                  // Poin 6: Isi Deskripsi Umum
                  const Text(
                    'UNSOED menawarkan berbagai program studi yang strategis, tersebar di 12 fakultas. Berikut adalah beberapa program studi unggulan yang mencerminkan fokus universitas pada teknologi dan sumber daya perdesaan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 30),

                  // PENJELASAN KHUSUS PROGRAM STUDI INFORMATIKA
                  const Text(
                    'Detail Program Studi Informatika', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.indigo)
                  ),
                  const Divider(color: Colors.indigo),
                  
                  // Deskripsi Program Studi Informatika
                  const Text(
                    'Program Studi Informatika merupakan salah satu program studi di bawah Fakultas Teknik Universitas Jenderal Soedirman (UNSOED) yang berfokus pada penguasaan ilmu pengetahuan dan teknologi di bidang komputasi. Prodi ini berdiri untuk menjawab kebutuhan tenaga ahli di bidang teknologi informasi yang mampu berinovasi dan memberikan solusi cerdas berbasis sistem komputer.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 15),
                  
                  // Detail Kurikulum
                  const Text(
                    'Dalam perkuliahannya, mahasiswa Informatika UNSOED dibekali dengan dasar-dasar ilmu komputer seperti algoritma, pemrograman, struktur data, basis data, jaringan komputer, rekayasa perangkat lunak, kecerdasan buatan, dan keamanan siber. Selain itu, prodi ini juga menekankan kemampuan berpikir kritis, pemecahan masalah, serta pengembangan sistem berbasis teknologi yang aplikatif di berbagai bidang kehidupan.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 15),

                  // Visi Prodi
                  const Text(
                    'Visi Prodi Informatika UNSOED adalah menjadi program studi yang unggul dalam pengembangan teknologi informasi yang berorientasi pada pemberdayaan masyarakat dan nilai-nilai lokal, sejalan dengan semangat universitas dalam mewujudkan kemandirian bangsa.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic),
                  ),
                  const SizedBox(height: 15),

                  // Prospek Lulusan
                  const Text(
                    'Lulusan Informatika UNSOED diharapkan memiliki kemampuan sebagai software engineer, data analyst, system developer, researcher, dan entrepreneur di bidang teknologi informasi, dengan tetap menjunjung tinggi etika profesi serta semangat pengabdian kepada masyarakat.',
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 15),
                  ),
                  const SizedBox(height: 30),
                  
                  // Daftar Program Unggulan Lainnya
                  const Text(
                    'Contoh Program Studi dari Berbagai Fakultas:', 
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.deepPurple)
                  ),
                  const SizedBox(height: 10),

                  // Daftar Prodi yang diperbarui dengan perbaikan layout mobile
                  _buildProdiCard(
                    'Agroteknologi', 
                    'Fakultas Pertanian', 
                    'Basis Pengembangan Perdesaan', 
                    Icons.agriculture
                  ),
                  _buildProdiCard(
                    'Akuntansi', 
                    'Fakultas Ekonomi dan Bisnis', 
                    'Studi Keuangan & Audit', 
                    Icons.account_balance_wallet
                  ),
                  _buildProdiCard(
                    'Ilmu Hukum', 
                    'Fakultas Hukum', 
                    'Hukum Ekonomi & Agraria', 
                    Icons.gavel
                  ),
                  _buildProdiCard(
                    'Ilmu Komunikasi', 
                    'FISIP', 
                    'Konsentrasi Media & PR', 
                    Icons.people_alt
                  ),
                  _buildProdiCard(
                    'Kedokteran', 
                    'Fakultas Kedokteran', 
                    'Program Sarjana & Profesi', 
                    Icons.medical_services
                  ),
                  _buildProdiCard(
                    'Informatika', 
                    'Fakultas Teknik', 
                    'Fokus Kecerdasan Buatan', 
                    Icons.computer
                  ),
                  _buildProdiCard(
                    'Ilmu Kelautan', 
                    'Fakultas Perikanan dan Ilmu Kelautan', 
                    'Pengelolaan Sumber Daya Laut', 
                    Icons.waves
                  ),
                  _buildProdiCard(
                    'Fisika', 
                    'Fakultas MIPA', 
                    'Bidang Material Lanjut', 
                    Icons.science
                  ),
                  _buildProdiCard(
                    'Sastra Inggris', 
                    'Fakultas Ilmu Budaya', 
                    'Linguistik & Budaya', 
                    Icons.menu_book
                  ),
                  _buildProdiCard(
                    'Kesehatan Masyarakat', 
                    'Fakultas Kesehatan', 
                    'Promosi Kesehatan', 
                    Icons.health_and_safety
                  ),
                  _buildProdiCard(
                    'Peternakan', 
                    'Fakultas Peternakan', 
                    'Pusat Unggulan Ternak Lokal', 
                    Icons.pets
                  ),
                  _buildProdiCard(
                    'Keperawatan', 
                    'Fakultas Ilmu-Ilmu Kesehatan', 
                    'Ilmu Keperawatan Dasar', 
                    Icons.local_hospital
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // FUNGSI _buildProdiCard yang diperbaiki untuk layout mobile
  Widget _buildProdiCard(String prodi, String fakultas, String deskripsi, IconData icon) {
    return Card(
      elevation: 3,
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Ikon Kiri
            Icon(icon, color: Colors.deepPurple, size: 40),
            const SizedBox(width: 15),

            // Konten Tengah (Menggunakan Column & Expanded agar teks tidak terpotong)
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    prodi, 
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                  ),
                  const SizedBox(height: 4),
                  Text(
                    fakultas,
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                ],
              ),
            ),
            
            // Trailing Chip
            const SizedBox(width: 10),
            Chip(
              label: Text(
                deskripsi,
                style: const TextStyle(fontSize: 12),
              ),
              backgroundColor: Colors.deepPurple.shade50,
            ),
          ],
        ),
      ),
    );
  }
}