import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hello_world_from_flutter/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // 画面を構築する
    await tester.pumpWidget(MyApp());

    // 0が書かれているWidgetが1つであることをテスト
    expect(find.text('0'), findsOneWidget);
    // 1が書かれているWidgetがないことをテスト
    expect(find.text('1'), findsNothing);

    // アイコンが+のWidgetをタップ
    await tester.tap(find.byIcon(Icons.add));
    // Widgetツリーの再構築
    await tester.pump();

    // 0が書かれているWidgetがないことをテスト
    expect(find.text('0'), findsNothing);
    // 1が書かれているWidgetが1つであることをテスト
    expect(find.text('1'), findsOneWidget);
  });
}
