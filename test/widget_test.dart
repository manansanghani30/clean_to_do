import 'package:flutter_test/flutter_test.dart';
import 'package:to_do_clean_tutorial/2_application/app/basic_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BasicApp());
  });
}
