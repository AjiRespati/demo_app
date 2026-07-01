import 'package:demo_app/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('shows Sprint 001 foundation shell', (WidgetTester tester) async {
    await tester.pumpWidget(const GlassAdminKitApp());

    expect(find.text('Glass Admin Kit'), findsWidgets);
    expect(find.text('Foundation'), findsOneWidget);
    expect(find.text('Glass Scaffold'), findsOneWidget);
  });
}
