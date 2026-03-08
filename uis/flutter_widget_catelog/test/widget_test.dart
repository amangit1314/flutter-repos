import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_widget_catelog/app.dart';

void main() {
  testWidgets('pump widget smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const App());
  });
}
