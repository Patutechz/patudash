import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        minY: 0,
        maxY: 15,
        gridData: FlGridData(show: true),
        borderData: FlBorderData(show: false),
        titlesData: FlTitlesData(
          show: true,
          topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                  showTitles: true, getTitlesWidget: getBottomTiles)),
        ),
        barGroups: [
          BarChartGroupData(
            x: 0,
            barRods: [
              BarChartRodData(
                toY: 8,
                color: Colors.deepPurpleAccent,
                width: 12,
                borderRadius: BorderRadius.circular(4),
                // backDrawRodData: BackgroundBarChartRodData(
                //   show: true,
                //   toY: 15,
                //   color: Colors.deepPurple.shade50,
                // ),
              ),
              // BarChartRodData(
              //   toY: 9,
              //   color: Colors.blue,
              //   width: 24,
              //   borderRadius: BorderRadius.circular(4),
              // ),
            ],
          ),
          BarChartGroupData(
            x: 1,
            barRods: [
              BarChartRodData(
                toY: 10,
                color: Colors.deepPurpleAccent,
                width: 12,
                borderRadius: BorderRadius.circular(4),
                // backDrawRodData: BackgroundBarChartRodData(
                //   show: true,
                //   toY: 15,
                //   color: Colors.deepPurple.shade50,
                // ),
              ),
              // BarChartRodData(
              //   toY: 10,
              //   color: Colors.deepOrangeAccent,
              //   width: 24,
              //   borderRadius: BorderRadius.circular(4),
              //   backDrawRodData: BackgroundBarChartRodData(
              //     show: true,
              //     toY: 15,
              //     color: Colors.deepOrange.shade50,
              //   ),
              // ),
              // BarChartRodData(
              //   toY: 10,
              //   color: Colors.blue,
              //   width: 24,
              //   borderRadius: BorderRadius.circular(4),
              // ),
            ],
          ),
          BarChartGroupData(
            x: 2,
            barRods: [
              BarChartRodData(
                toY: 14,
                color: Colors.deepPurpleAccent,
                width: 12,
                borderRadius: BorderRadius.circular(4),
                // backDrawRodData: BackgroundBarChartRodData(
                //     show: true, toY: 15, color: Colors.deepPurple.shade50),
              ),
              // BarChartRodData(
              //   toY: 12,
              //   color: Colors.blue,
              //   width: 24,
              //   borderRadius: BorderRadius.circular(4),
              // ),
            ],
          ),
          BarChartGroupData(
            x: 3,
            barRods: [
              BarChartRodData(
                toY: 8,
                color: Colors.deepPurpleAccent,
                width: 12,
                borderRadius: BorderRadius.circular(4),
                // backDrawRodData: BackgroundBarChartRodData(1
              ),
              // BarChartRodData(
              //   toY: 12,
              //   color: Colors.blue,
              //   width: 24,
              //   borderRadius: BorderRadius.circular(4),
              // ),
            ],
          ),
        ],
      ),
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
    case 1:
      text = const Text(
        'M',
        style: style,
      );
      break;
    case 2:
      text = const Text(
        'T',
        style: style,
      );
      break;
    case 3:
      text = const Text(
        'W',
        style: style,
      );
      break;
    default:
      text = const Text(
        ' ',
        style: style,
      );
      break;
  }

  return SideTitleWidget(child: text, axisSide: meta.axisSide);
}
