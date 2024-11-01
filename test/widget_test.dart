import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:uts_06tplm002_211011450095/main.dart';

void main() {
  testWidgets('Shoe list screen displays shoes and title', (WidgetTester tester) async {
    
    await tester.pumpWidget(MyApp());

    
    expect(find.text('Shoes'), findsOneWidget);

    
    expect(find.byType(Card), findsWidgets);

    
    expect(find.text('Nike SB Zoom Blazer Mid Premium'), findsOneWidget);

    
    expect(find.text('₹8,795'), findsOneWidget);

    
    expect(find.byType(CircleAvatar), findsOneWidget);
  });
}
