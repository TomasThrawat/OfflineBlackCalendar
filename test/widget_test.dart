import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:calender/main.dart';

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

  testWidgets(
    'renders current month, navigates, and title returns to today',
    (tester) async {
      await tester.pumpWidget(const CalendarApp());

      final now = DateTime.now();
      expect(
        find.text('${months[now.month - 1]} ${now.year}'),
        findsOneWidget,
      );
      expect(find.byKey(const Key('calendarTitleButton')), findsOneWidget);
      expect(find.byKey(const Key('previousMonthButton')), findsOneWidget);
      expect(find.byKey(const Key('nextMonthButton')), findsOneWidget);

      await tester.tap(find.byKey(const Key('nextMonthButton')));
      await tester.pump();

      final nextMonth = DateTime(now.year, now.month + 1);
      expect(
        find.text('${months[nextMonth.month - 1]} ${nextMonth.year}'),
        findsOneWidget,
      );

      await tester.tap(find.byKey(const Key('calendarTitleButton')));
      await tester.pump();

      expect(
        find.text('${months[now.month - 1]} ${now.year}'),
        findsOneWidget,
      );
    },
  );
}
