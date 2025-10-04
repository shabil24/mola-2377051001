import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:myapp/main.dart';
import 'package:myapp/screens/dashboard_screen.dart';

void main() {
  testWidgets('Dashboard screen smoke test', (WidgetTester tester) async {
    // Build app langsung ke Dashboard
    await tester.pumpWidget(const MaterialApp(
      home: DashboardScreen(),
    ));

    // Verifikasi teks utama muncul
    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('Saldo Saat Ini'), findsOneWidget);
    expect(find.text('Rp 1.234.567'), findsOneWidget);

    // Verifikasi tombol ada
    expect(find.text('Lihat Detail Transaksi'), findsOneWidget);
  });

  testWidgets('JustduitApp loads without error', (WidgetTester tester) async {
    // Tes class utama aplikasi
    await tester.pumpWidget(const JustduitApp());

    // Minimal cek halaman awal punya teks "Login"
    expect(find.text('Login'), findsWidgets);
  });
}
