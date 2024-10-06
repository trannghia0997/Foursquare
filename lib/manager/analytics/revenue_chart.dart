import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:foursquare/riverpod/invoice.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'revenue_calendar.dart';

class RevenueChart extends StatelessWidget {
  final List<RevenueData> data;
  final bool animate;

  const RevenueChart(this.data, {super.key, required this.animate});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        alignment: BarChartAlignment.spaceAround,
        barGroups: _createBarGroups(),
        titlesData: FlTitlesData(
          leftTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          topTitles: const AxisTitles(
            sideTitles: SideTitles(
              showTitles: false,
            ),
          ),
          bottomTitles: AxisTitles(
            sideTitles: SideTitles(
              showTitles: true,
              getTitlesWidget: (value, meta) {
                return Text(data[value.toInt()].month);
              },
            ),
          ),
        ),
        borderData: FlBorderData(show: false),
        barTouchData: BarTouchData(
          touchTooltipData: BarTouchTooltipData(

              // tooltipBgColor: Colors.blueAccent,
              ),
          touchCallback: (FlTouchEvent event, barTouchResponse) {
            if (barTouchResponse != null && barTouchResponse.spot != null) {
              _showRevenueCalendar(context); // Pass month to the calendar
            }
          },
        ),
      ),
      swapAnimationDuration:
          animate ? const Duration(milliseconds: 250) : Duration.zero,
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    return data.asMap().entries.map((entry) {
      final index = entry.key;
      final revenue = entry.value;
      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: revenue.amount.toDouble(),
            color: revenue.isCurrentMonth ? Colors.red : Colors.blue,
          ),
        ],
      );
    }).toList();
  }

  void _showRevenueCalendar(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const RevenueCalendar(),
      ),
    );
  }
}

class RevenueScreen extends HookConsumerWidget {
  const RevenueScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentMonth = DateTime.now().month;
    final invoiceData = ref.watch(singleInvoiceInfoProvider('1og22py3fs7dhny'));

    return invoiceData.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Center(child: Text('Error: $err')),
      data: (invoice) {
        int currentMonthRevenue = invoice.invoice.totalAmount.toInt();

        final List<RevenueData> revenueData = [
          RevenueData('Tháng ${currentMonth - 4}', 22),
          RevenueData('Tháng ${currentMonth - 3}', 41),
          RevenueData('Tháng ${currentMonth - 2}', 35),
          RevenueData('Tháng ${currentMonth - 1}', 53),
          RevenueData('Tháng $currentMonth', currentMonthRevenue,
              isCurrentMonth: true),
        ];

        return Container(
          padding: const EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            children: [
              const Text(
                'Doanh thu theo tháng',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16.0),
              Expanded(
                child: RevenueChart(revenueData, animate: true),
              ),
            ],
          ),
        );
      },
    );
  }
}

class RevenueData {
  final String month;
  final int amount;
  final bool isCurrentMonth;

  RevenueData(this.month, this.amount, {this.isCurrentMonth = false});
}
