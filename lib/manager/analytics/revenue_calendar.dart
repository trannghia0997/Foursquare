import 'package:flutter/material.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RevenueCalendar extends HookConsumerWidget {
  const RevenueCalendar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    DateTime selectedDate = DateTime.now();
    final invoiceData = ref.watch(singleInvoiceInfoProvider('1og22py3fs7dhny'));

    // Sample revenue data
    final Map<DateTime, double> revenueData = {
      DateTime(2024, 9, 2): 900,
      DateTime(2024, 9, 6): 900,
    };

    return Scaffold(
      appBar: AppBar(
        title: const Text('Doanh thu trong tháng'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          CalendarHeader(
            selectedDate: selectedDate,
            onLeftArrowTap: () {
              selectedDate =
                  DateTime(selectedDate.year, selectedDate.month - 1, 1);
            },
            onRightArrowTap: () {
              if (selectedDate.month != DateTime.now().month) {
                selectedDate =
                    DateTime(selectedDate.year, selectedDate.month + 1, 1);
              }
            },
          ),
          const SizedBox(height: 10),
          buildWeekdayLabels(),
          const Divider(thickness: 1, color: Colors.grey),
          Expanded(child: buildCalendarTable(selectedDate, revenueData)),
        ],
      ),
    );
  }

  Widget buildWeekdayLabels() {
    List<String> weekdays = ["T2", "T3", "T4", "T5", "T6", "T7", "CN"];
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: weekdays
          .map((day) => Expanded(
                child: Center(
                  child: Text(
                    day,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.red),
                  ),
                ),
              ))
          .toList(),
    );
  }

  Widget buildCalendarTable(
      DateTime selectedDate, Map<DateTime, double> revenueData) {
    int daysInMonth =
        DateTime(selectedDate.year, selectedDate.month + 1, 0).day;
    int firstWeekdayOfMonth =
        DateTime(selectedDate.year, selectedDate.month, 1).weekday;

    List<TableRow> calendarRows = [];

    List<Widget> firstRow = List.generate(7, (index) {
      if (index < firstWeekdayOfMonth - 1) {
        return Container();
      } else {
        DateTime date = DateTime(selectedDate.year, selectedDate.month,
            index - firstWeekdayOfMonth + 2);
        return buildCalendarCell(date, revenueData);
      }
    });
    calendarRows.add(TableRow(children: firstRow));

    int currentDay = 8 - firstWeekdayOfMonth;
    while (currentDay <= daysInMonth) {
      List<Widget> weekRow = List.generate(7, (index) {
        if (currentDay > daysInMonth) return Container();

        DateTime date =
            DateTime(selectedDate.year, selectedDate.month, currentDay);
        currentDay++;
        return buildCalendarCell(date, revenueData);
      });
      calendarRows.add(TableRow(children: weekRow));
    }

    return Table(
      columnWidths: const {
        1: FlexColumnWidth(1),
        2: FlexColumnWidth(1),
        3: FlexColumnWidth(1),
        4: FlexColumnWidth(1),
        5: FlexColumnWidth(1),
      },
      border: const TableBorder(
          horizontalInside: BorderSide(color: Colors.grey, width: 0.5)),
      children: calendarRows,
    );
  }

  Widget buildCalendarCell(DateTime date, Map<DateTime, double> revenueData) {
    double? revenue = revenueData[date];
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Column(
        children: [
          Text(
            '${date.day}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: date.isAfter(DateTime.now()) ? Colors.grey : Colors.black,
            ),
          ),
          if (revenue != null && date.month <= DateTime.now().month)
            Text(
              revenue.toStringAsFixed(0),
              style: const TextStyle(color: Colors.red, fontSize: 16),
            ),
        ],
      ),
    );
  }
}

class CalendarHeader extends StatelessWidget {
  final DateTime selectedDate;
  final VoidCallback onLeftArrowTap;
  final VoidCallback onRightArrowTap;

  const CalendarHeader({
    super.key,
    required this.selectedDate,
    required this.onLeftArrowTap,
    required this.onRightArrowTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: onLeftArrowTap,
        ),
        Text(
          '${selectedDate.month}/${selectedDate.year}',
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: onRightArrowTap,
        ),
      ],
    );
  }
}
