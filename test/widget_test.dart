import 'package:flutter_experience/my_app.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_experience/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());
  });
}
