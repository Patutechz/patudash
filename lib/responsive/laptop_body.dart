import 'package:flutter/material.dart';
import 'package:flutter_heatmap_calendar/flutter_heatmap_calendar.dart';
import 'package:patudash/constants.dart';
import 'package:patudash/util/my_box.dart';
import 'package:patudash/util/my_tile.dart';

class LaptopScaffold extends StatelessWidget {
  const LaptopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: defaultBackgroundColor,
      appBar: myAppBar,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // open drawer
            myDrawer,

            // first half of page
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  // first 4 boxes in grid
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (context, index) {
                          return MyBox();
                        },
                      ),
                    ),
                  ),

                  // list of previous days
                  Expanded(
                    child: ListView.builder(
                      itemCount: 7,
                      itemBuilder: (context, index) {
                        return const MyTile();
                      },
                    ),
                  ),
                ],
              ),
            ),
            // second half of page
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey[400],
                      ),
                      child: HeatMapCalendar(
                        defaultColor: Colors.white,
                        flexible: true,
                        colorMode: ColorMode.color,
                        datasets: {
                          DateTime(2024, 4, 6): 3,
                          DateTime(2024, 4, 7): 7,
                          DateTime(2024, 4, 8): 10,
                          DateTime(2024, 4, 9): 13,
                          DateTime(2024, 4, 13): 6,
                        },
                        colorsets: const {
                          1: Colors.red,
                          3: Colors.orange,
                          5: Colors.yellow,
                          7: Colors.green,
                          9: Colors.blue,
                          11: Colors.indigo,
                          13: Colors.purple,
                        },
                        onClick: (value) {
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text(value.toString())));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
