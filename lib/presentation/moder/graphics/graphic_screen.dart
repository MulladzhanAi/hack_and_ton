import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ReportsChartScreen extends StatelessWidget {
  final List<Map<String, dynamic>> data = [
    {
      "date": "2024-11-06T00:00:00Z",
      "totalReports": 1,
      "solvedReports": 0,
    },
    {
      "date": "2024-11-07T00:00:00Z",
      "totalReports": 3,
      "solvedReports": 0,
    },
    {
      "date": "2024-11-08T00:00:00Z",
      "totalReports": 2,
      "solvedReports": 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    List<FlSpot> totalReportsSpots = [];
    List<FlSpot> solvedReportsSpots = [];

    // Преобразуем данные в нужный формат для fl_chart
    for (int i = 0; i < data.length; i++) {
      DateTime date = DateTime.parse(data[i]['date']);
      totalReportsSpots.add(FlSpot(i.toDouble(), data[i]['totalReports'].toDouble()));
      solvedReportsSpots.add(FlSpot(i.toDouble(), data[i]['solvedReports'].toDouble()));
    }

    return Scaffold(
      appBar: AppBar(title: Text('Reports Chart')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: LineChart(
          LineChartData(
            gridData: FlGridData(show: true),
            titlesData: FlTitlesData(
              leftTitles: AxisTitles(
                axisNameWidget: Text('Reports'),
                axisNameSize: 16,
                sideTitles: SideTitles(showTitles: true),
              ),
              bottomTitles: AxisTitles(
                axisNameWidget: Text('Date'),
                axisNameSize: 16,
                sideTitles: SideTitles(showTitles: true),
              ),
            ),
            borderData: FlBorderData(show: true),
            lineBarsData: [
              LineChartBarData(
                spots: totalReportsSpots,
                isCurved: true,
                //colors: [Colors.blue],
                barWidth: 4,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
              LineChartBarData(
                spots: solvedReportsSpots,
                isCurved: true,
                //colors: [Colors.green],
                barWidth: 4,
                isStrokeCapRound: true,
                belowBarData: BarAreaData(show: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
