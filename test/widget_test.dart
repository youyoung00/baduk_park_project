// This is a basic Flutter widget_body test.
//
// To perform an interaction with a widget_body in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widget in the widget_body
// tree, read text, and verify that the values of widget_body properties are correct.

import 'package:baduk_park/data/data_source/remote/post_remote_data_source.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('PostRepository api 테스트합니다.', () async {
    final PostApi api = PostApi();

    // final result = await api.fetch();
    // print(result.first.name);
    // print(result.first.keyword);
    // print(result.first);
    // expect(result.length, 20);
  });

  // testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());
  //
  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);
  //
  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();
  //
  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });
}
