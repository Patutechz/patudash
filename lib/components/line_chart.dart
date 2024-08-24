import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyLineChart extends StatelessWidget {
  const MyLineChart({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minY: 0,
        maxY: 10,
        // minX: 0,
        // maxX: 10,
        gridData: FlGridData(show: true),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: false, getTitlesWidget: getBottomTiles)),
        ),
        lineBarsData: [
        LineChartBarData(
          spots: [
            FlSpot(0, 1),
            FlSpot(3, 5),
            FlSpot(6, 2),
            FlSpot(9, 7),
          ],
          isCurved: true,
          color: Colors.deepPurpleAccent,
          barWidth: 2,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(show: true)
        ),
        LineChartBarData(
          spots: [
            FlSpot(1, 7),
            FlSpot(3, 2),
            FlSpot(6, 5),
            FlSpot(9, 1),
          ],
          isCurved: true,
          color: Colors.deepPurpleAccent.shade100,
          barWidth: 2,
          belowBarData: BarAreaData(show: false),
          dotData: FlDotData(show: true)
        ),
      ]),
    );
  }
}

Widget getBottomTiles(double value, TitleMeta meta) {
  const style = TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  Widget text;
  switch (value.toInt()) {
    case 0:
      text = const Text(
        'S',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'M',
        style: style,
      );
      break;
    case 6:
      text = const Text(
        'T',
        style: style,
      );
      break;
    case 9:
      text = const Text(
        'W',
        style: style,
      );
      break;
    default:
      text = const Text(
        '',
        style: style,
      );
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
