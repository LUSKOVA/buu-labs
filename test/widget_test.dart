import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MainApp());

    // Здесь у тебя нет счетчика, но можно проверить, что виджет HomeScreen отображается
    expect(find.text('BUU — Мои задачи'), findsOneWidget);
    
    // Если хочешь проверить кнопку добавления задачи:
    expect(find.text('+'), findsOneWidget);
  });
}
