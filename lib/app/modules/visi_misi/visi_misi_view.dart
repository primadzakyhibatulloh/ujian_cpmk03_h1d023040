import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'visi_misi_controller.dart';
import '../../../widgets/custom_drawer.dart';

class VisiMisiView extends GetView<VisiMisiController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('3. Visi & Misi')), 
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Gambar/Ikon (DIBUNGKUS DENGAN ASPECTRATIO)
            Center(
              child: Container(
                padding: const EdgeInsets.all(10), 
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  borderRadius: BorderRadius.circular(15)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: AspectRatio( // Tambahkan AspectRatio di sini
                    aspectRatio: 16 / 9, // Rasio umum untuk gambar banner
                    child: Image.asset( 
                      'assets/images/visi_misi.jpg', 
                      fit: BoxFit.cover, 
                      width: double.infinity,
                      // Hapus height dan width eksplisit di Image.asset
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            const Text(
              'Visi UNSOED', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)
            ),
            const Divider(),
            // Poin 6: Isi Deskripsi (Visi)
            const Text(
              'UNSOED dalam pengembangannya akan mewujudkan visi yang telah dirumuskan untuk diwujudkan pada tahun 2034 yaitu "Diakui dunia sebagai pusat pengembangan sumberdaya perdesaan dan kearifan lokal".',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
            ),
            const SizedBox(height: 40),

            const Text(
              'Misi UNSOED', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)
            ),
            const Divider(),
            // Poin 6: Isi Deskripsi (Misi)
            _buildMissionPoint('Menyelenggarakan pembelajaran berkualitas tinggi untuk menghasilkan lulusan yang berkarakter, berkualitas, dan berdaya saing tinggi.'),
            _buildMissionPoint('Mengembangkan penelitian dan inovasi unggul untuk pengembangan ilmu dan peningkatan daya saing bangsa.'),
            _buildMissionPoint('Mengembangkan program pemberdayaan masyarakat dan transfer teknologi berkualitas tinggi untuk meningkatkan kesejahteraan masyarakat.'),
            _buildMissionPoint('Meningkatkan kualitas kerjasama dengan mitra untuk meningkatkan kemandirian dan partisipasi institusi pada pengembangan masyarakat.'),
            _buildMissionPoint('Mengembangkan tatapamong universitas yang baik.'),
          ],
        ),
      ),
    );
  }

  Widget _buildMissionPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4.0, right: 8.0),
            child: Icon(Icons.check_circle, size: 18, color: Colors.green),
          ),
          Expanded(child: Text(text, style: const TextStyle(fontSize: 16))),
        ],
      ),
    );
  }
}