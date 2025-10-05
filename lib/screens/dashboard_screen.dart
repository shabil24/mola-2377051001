import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  // Properti statis route
  static const String route = '/dashboard';

  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold utama
    return Scaffold(
      backgroundColor: Colors.grey[100], // Latar belakang abu-abu muda
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.black), // Warna teks hitam
        ),
        backgroundColor: Colors.white,
        elevation: 1, // Sedikit bayangan di bawah AppBar
        automaticallyImplyLeading: false, // Menghilangkan tombol back otomatis
      ), // AppBar

      // COLUMN: Menyusun semua konten dari atas ke bawah
      body: Padding(
        padding: const EdgeInsets.all(16.0), // Beri jarak dari tepi layar
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Rata kiri
          children: [
            // --- Teks Sapaan ---
            const Text(
              'Selamat Datang,',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const Text(
              'Shabil Ramadhan', // Nama pengguna
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 24), // Spasi antar elemen

            // --- Kartu Informasi Utama (Saldo) ---
            Container(
              width: double.infinity, // Lebar kartu memenuhi layar
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16.0),
                boxShadow: [
                  BoxShadow(
                    // ✅ PERBAIKAN: Menggunakan .withAlpha() sebagai pengganti.
                    // 0.15 (opacity) dari 255 (alpha maksimum) adalah sekitar 38.
                    color: Colors.grey.withAlpha(38), 
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 5),
                  ),
                ],
              ), // BoxDecoration
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // ROW: Menyusun icon dan teks "Saldo"
                  Row(
                    children: [
                      Icon(
                        Icons.account_balance_wallet_outlined,
                        color: Colors.grey[500], // Icon
                      ),
                      const SizedBox(width: 8),
                      const Text(
                        'Saldo Saat Ini',
                        style: TextStyle(fontSize: 16, color: Colors.grey),
                      ),
                    ],
                  ), // Row
                  const SizedBox(height: 8),
                  const Text(
                    'Rp 1.234.567',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 24),

                  // Tombol Aksi di dalam kartu
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi tombol lihat detail transaksi
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1E88E5), // Warna biru utama
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Lihat Detail Transaksi'),
                    ),
                  ),
                ],
              ),
            ), // Container Kartu Saldo
          ],
        ),
      ),
    );
  }
}