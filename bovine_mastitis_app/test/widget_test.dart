import 'package:flutter_test/flutter_test.dart';
import 'package:bovine_mastitis_app/main.dart';

void main() {
  testWidgets('App loads correctly', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BovineHealthApp());

    // Verify that the main title exists
    expect(find.byType(BovineHealthApp), findsOneWidget);
  });
}
