import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyPieChart extends StatelessWidget {
  const MyPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Text("Revenue"),
        PieChart(
          swapAnimationDuration: const Duration(milliseconds: 750),
          swapAnimationCurve: Curves.easeInOutQuint,
          PieChartData(sections: [
            PieChartSectionData(
              value: 60,
              color: Colors.deepPurple,
              // title: "Phone",
              showTitle: true,
              radius: 50,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            PieChartSectionData(
              value: 30,
              color: Colors.deepPurple[300],
              radius: 50,
              titleStyle: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            PieChartSectionData(
              value: 10,
              color: Colors.deepPurple[100],
              radius: 60,
              titleStyle: const TextStyle(color: Colors.black, fontSize: 16),
            ),
          ]),
        )
      ],
    );
  }
}
