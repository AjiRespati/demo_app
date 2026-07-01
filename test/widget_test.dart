import 'package:demo_app/app/app.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:liquid_glass_widgets/liquid_glass_widgets.dart';

void main() {
  testWidgets('renders the Glass Admin Kit showcase', (tester) async {
    await tester.pumpWidget(LiquidGlassWidgets.wrap(child: const App()));

    await tester.pump();

    expect(find.text('Glass Admin Kit'), findsOneWidget);
    expect(find.text('Foundation'), findsAtLeastNWidgets(1));
    expect(find.text('Revenue'), findsOneWidget);
  });
}
