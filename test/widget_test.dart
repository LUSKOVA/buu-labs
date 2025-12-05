<<<<<<< HEAD
=======
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

>>>>>>> 00e29f93416e8a4acd2399c88c26c1310aa79a81
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:my_app/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
<<<<<<< HEAD
    await tester.pumpWidget(const MainApp());

    // Здесь у тебя нет счетчика, но можно проверить, что виджет HomeScreen отображается
    expect(find.text('BUU — Мои задачи'), findsOneWidget);
    
    // Если хочешь проверить кнопку добавления задачи:
    expect(find.text('+'), findsOneWidget);
=======
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
>>>>>>> 00e29f93416e8a4acd2399c88c26c1310aa79a81
  });
}
