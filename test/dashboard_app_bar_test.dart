import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:task_app/widgets/dashboard_app_bar.dar.dart';

void main() {
  testWidgets('Dashboard App Bar ', (WidgetTester tester) async {
    await tester.pumpWidget(
      MediaQuery(
        data: new MediaQueryData(),
        child: MaterialApp(home: DashboardAppBar()),
      ),
    );

    var center = find.byType(Center);
    expect(center, findsOneWidget);

    var appBar = find.byType(AppBar);
    expect(appBar, findsOneWidget);

    var container = find.byType(Container);
    expect(container, findsWidgets);

    var image = find.byType(Image);
    expect(image, findsOneWidget);

    var circleAvatar = find.byType(CircleAvatar);
    expect(circleAvatar, findsOneWidget);

    var sizedBox = find.byType(SizedBox);
    expect(sizedBox, findsWidgets);


  },);
}
