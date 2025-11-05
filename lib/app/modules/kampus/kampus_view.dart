import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'kampus_controller.dart';
import '../../../widgets/custom_drawer.dart';

class KampusView extends GetView<KampusController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('2. Profil Kampus')),
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poin 6: Gambar/Ikon - Gambar Profil Kampus UNSOED (DIBUNGKUS DENGAN ASPECTRATIO)
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), 
                child: AspectRatio( // Tambahkan AspectRatio di sini
                  aspectRatio: 16 / 9, // Rasio umum untuk banner, sesuaikan jika perlu
                  child: Image.asset( 
                    'assets/images/profil_kampus.png', 
                    width: double.infinity,
                    fit: BoxFit.cover, 
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            
            // ... (Sisa kode untuk teks sejarah dan informasi lainnya tetap sama)
            
            const Text(
              'Sejarah Universitas Jenderal Soedirman (UNSOED)', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)
            ),
            const SizedBox(height: 10),
            // Poin 6: Isi Deskripsi
            const Text(
              'Universitas Jenderal Soedirman, atau akrab disapa dengan UNSOED, adalah satu dari perguruan tinggi negeri di bawah administrasi Kementerian Pendidikan dan Kebudayaan RI. Berdiri pada 23 September 1963 melalui Keputusan Presiden RI No. 195 Tahun 1963, kampus yang terletak di Purwokerto, ibukota Kabupaten Banyumas ini, secara historis didirikan sebagai jawaban atas kebutuhan masyarakat akan pendidikan tinggi di wilayah Karesidenan Banyumas (Kabupaten Banyumas, Cilacap, Purbalingga dan Banjarnegara).',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 15),
            const Text(
              'Karakter geografis, sumberdaya, dan kultur di wilayah Karesidenan Banyumas, kemudian melahirkan kekhasan UNSOED sebagai universitas yang **bercirikan perdesaan** dengan senantiasa berpegang pada nilai-nilai **kearifan lokal**.',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic, fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 30),
            
            // Informasi tambahan
            _buildInfoRow(Icons.calendar_today, 'Tanggal Berdiri', '23 September 1963'),
            _buildInfoRow(Icons.location_on, 'Lokasi Utama', 'Purwokerto, Jawa Tengah'),
            _buildInfoRow(Icons.account_balance, 'Ciri Khas', 'Perdesaan dan Kearifan Lokal'),
          ],
        ),
      ),
    );
  }

  // Widget pembantu tetap sama
  Widget _buildInfoRow(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurple, size: 28),
          const SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          )
        ],
      ),
    );
  }
}