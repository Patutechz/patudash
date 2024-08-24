import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyScatterChart extends StatelessWidget {
  const MyScatterChart({super.key});

  @override
  Widget build(BuildContext context) {
    return ScatterChart(
      ScatterChartData(
        gridData: FlGridData(show: true),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(show: false),
        scatterSpots: [
          ScatterSpot(1, 1),
          ScatterSpot(2, 3),
          ScatterSpot(3, 2),
          ScatterSpot(4, 4),
        ],
      ),
    );
  }
}
