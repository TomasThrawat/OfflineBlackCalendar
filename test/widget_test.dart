import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:offline_black_calendar/main.dart';

void main() {
  const months = <String>[
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  testWidgets('renders current month and navigates between months', (tester) async {
    await tester.pumpWidget(const CalendarApp());

    final now = DateTime.now();
    expect(
      find.text('${months[now.month - 1]} ${now.year}'),
      findsOneWidget,
    );
    expect(find.byKey(const Key('previousMonthButton')), findsOneWidget);
    expect(find.byKey(const Key('nextMonthButton')), findsOneWidget);

    await tester.tap(find.byKey(const Key('nextMonthButton')));
    await tester.pump();

    final nextMonth = DateTime(now.year, now.month + 1);
    expect(
      find.text('${months[nextMonth.month - 1]} ${nextMonth.year}'),
      findsOneWidget,
    );
  });
}
