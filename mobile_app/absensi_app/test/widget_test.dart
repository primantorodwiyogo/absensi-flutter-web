import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:absensi_app/app.dart';

void main() {
  testWidgets('SplashPage navigates to LoginPage', (WidgetTester tester) async {
    // Jalankan aplikasi
    await tester.pumpWidget(const AbsensiApp());

    // Awal: tampil teks "Absensi App" dari SplashPage
    expect(find.text('Absensi App'), findsOneWidget);

    // Tunggu semua animasi & navigasi selesai (maks 3 detik)
    await tester.pumpAndSettle(const Duration(seconds: 3));

    // Sekarang seharusnya sudah pindah ke halaman Login
    expect(find.text('Login'), findsOneWidget);
  });
}
