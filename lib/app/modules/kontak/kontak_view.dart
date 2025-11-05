import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'kontak_controller.dart';
import '../../../widgets/custom_drawer.dart';

class KontakView extends GetView<KontakController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('5. Kontak Kami')), // Poin 6: Judul
      drawer: CustomDrawer(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Poin 6: Gambar/Ikon
            Center(
              child: Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade50,
                  shape: BoxShape.circle
                ),
                child: const Icon(Icons.support_agent, size: 80, color: Colors.deepPurple),
              ),
            ),
            const SizedBox(height: 20),
            
            const Text(
              'Hubungi Kami', 
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.deepPurple)
            ),
            const Divider(),
            // Poin 6: Isi Deskripsi
            const Text(
              'Untuk informasi lebih lanjut mengenai Universitas Jenderal Soedirman, Anda dapat menghubungi kantor Rektorat atau melalui saluran komunikasi resmi berikut:',
              textAlign: TextAlign.justify,
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 30),

            // Informasi Kontak
            _buildContactInfo(Icons.phone, 'Telepon Rektorat', '(0281) 635292'),
            _buildContactInfo(Icons.email, 'Email Resmi', 'info@unsoed.ac.id'),
            _buildContactInfo(Icons.location_on, 'Alamat Rektorat', 'Jalan Profesor Dr. HR Boenyamin 708, Purwokerto'),
          ],
        ),
      ),
    );
  }

  Widget _buildContactInfo(IconData icon, String title, String subtitle) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      elevation: 2,
      child: ListTile(
        leading: Icon(icon, color: Colors.deepPurple, size: 30),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
      ),
    );
  }
}