# 📚 Aplikasi Profil Kampus UNSOED (Paket 0)

Aplikasi mobile dan web yang dikembangkan menggunakan **Flutter** dan **GetX** untuk menampilkan informasi dasar dan struktur Program Studi Universitas Jenderal Soedirman (UNSOED). Proyek ini diselesaikan sebagai bagian dari tugas mata kuliah Pemrograman Mobile.

---

## 🙋‍♂️ Informasi Pengembang

| Detail | Nilai | 
| :--- | :--- | 
| **Nama** | Prima Dzaky Hibatulloh | 
| **NIM** | H1D023040 | 
| **Mata Kuliah** | CPMK 03 (Pemrograman Mobile) | 

---

## ✨ Detail Implementasi

Proyek ini telah memenuhi semua petunjuk tugas, termasuk implementasi struktur Modular/MVC dengan Flutter dan GetX.

### 1. Struktur Arsitektur & Teknologi

* **Framework:** Flutter (dengan Dart SDK >=3.0.0)
* **State Management & Routing:** GetX (`get: ^4.6.6`)
* **Pola Desain:** Modular/MVC (Modul terpisah untuk View, Controller, dan Binding).
* **Aset:** Digunakan untuk logo Unsoed (`logo_unsoed.png`), gambar profil kampus (`profil_kampus.png`), dan banner untuk program studi (`informatika.jpg`) serta view untuk di bagian Visi Misi ('visi_misi.jpg).

### 2. Pemenuhan Fitur (Poin Tugas)

| Fitur Utama | Implementasi Teknis | Status | 
| :--- | :--- | :--- | 
| **5 Halaman Lengkap** | Home, Kampus, Visi & Misi, Program Studi, dan Kontak Kami. | ✅ | 
| **Navigasi** | Menggunakan Named Routes dengan **`Get.toNamed()`**. | ✅ | 
| **Widget Custom** | Komponen **`CustomDrawer`** di file terpisah yang berisi navigasi **`ListTile`**. | ✅ | 
| **Konten Minimal** | Setiap halaman memiliki Judul (`AppBar`), Deskripsi, dan Gambar/Aset. | ✅ | 
| **Perbaikan Layout** | Penggunaan **`AspectRatio(16/9)`** untuk menjaga proporsi gambar pada tampilan Desktop. | ✅ | 

### 3. Struktur Direktori (`lib/`)
<img width="347" height="311" alt="image" src="https://github.com/user-attachments/assets/1df6a69f-a33f-45c5-9797-cf2ba131183a" />


---

## 🚀 Cara Menjalankan Projek

1.  **Clone Repositori:**
    ```bash
    git clone [https://github.com/primadzakyhibatulloh/ujian_cpmk03_h1d023040.git](https://github.com/primadzakyhibatulloh/ujian_cpmk03_h1d023040.git)
    cd ujian_cpmk03_h1d023040
    ```
2.  **Instal Dependensi:**
    ```bash
    flutter pub get
    ```
3.  **Jalankan Aplikasi:**
    ```bash
    flutter run
    ```
    *(Gunakan `flutter run -d chrome` untuk menguji tampilan Desktop/Web).*
```eof
