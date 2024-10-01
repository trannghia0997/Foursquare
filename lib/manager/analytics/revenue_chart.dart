import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'revenue_calendar.dart';

class RevenueChart extends StatelessWidget {
  final List<charts.Series<RevenueData, String>> seriesList;
  final bool animate;

  RevenueChart(this.seriesList, {super.key, required this.animate});

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
      domainAxis: const charts.OrdinalAxisSpec(
        renderSpec: charts.SmallTickRendererSpec(
          labelStyle: charts.TextStyleSpec(
              fontSize: 12, color: charts.MaterialPalette.black),
        ),
      ),
      selectionModels: [
        charts.SelectionModelConfig(
          type: charts.SelectionModelType.info,
          changedListener: (charts.SelectionModel model) {
            if (model.hasDatumSelection) {
              final selectedDatum = model.selectedDatum[0];
              final month = selectedDatum.datum.month;
              _showRevenueCalendar(context); // Truyền tháng năm vào đây để chuyển qua lịch
            }
          },
        ),
      ],
    );
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

class RevenueScreen extends StatelessWidget {
  const RevenueScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
            child: RevenueChart(_createSampleData(), animate: true),
          ),
        ],
      ),
    );
  }

  static List<charts.Series<RevenueData, String>> _createSampleData() {
    final currentMonth = DateTime.now().month;

    // Data truyền vào đây. Truyền bao nhiêu cũng được biểu đồ sẽ tự mapping và hiển thị
    final data = [
      RevenueData('Tháng ${currentMonth - 4}', 22),
      RevenueData('Tháng ${currentMonth - 3}', 41),
      RevenueData('Tháng ${currentMonth - 2}', 35),
      RevenueData('Tháng ${currentMonth - 1}', 53),
      RevenueData('Tháng $currentMonth', 1000, isCurrentMonth: true),
    ];

    return [
      charts.Series<RevenueData, String>(
        id: 'Revenue',
        domainFn: (RevenueData revenue, _) => revenue.month,
        measureFn: (RevenueData revenue, _) => revenue.amount,
        colorFn: (RevenueData revenue, _) => revenue.isCurrentMonth
            ? charts.MaterialPalette.red.shadeDefault
            : charts.MaterialPalette.blue.shadeDefault,
        data: data,
      )
    ];
  }
}

class RevenueData {
  final String month;
  final int amount;
  final bool isCurrentMonth;

  RevenueData(this.month, this.amount, {this.isCurrentMonth = false});
}
