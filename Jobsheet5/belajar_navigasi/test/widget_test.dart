import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:belajar_navigasi/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Membangun widget MyApp dan memicu satu frame
    await tester.pumpWidget(const MyApp());

    // Memastikan bahwa counter dimulai dari 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Mengetuk ikon tambah dan memicu frame ulang
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Memastikan bahwa counter bertambah menjadi 1
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
