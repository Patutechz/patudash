import 'package:flutter/material.dart';
import 'package:patudash/components/bar_chart.dart';
import 'package:patudash/components/client_tile.dart';
import 'package:patudash/components/line_chart.dart';
import 'package:patudash/components/my_stats_card.dart';
import 'package:patudash/components/pie_chart.dart';
import 'package:patudash/components/stats_card.dart';

import 'package:patudash/components/my_drawer.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({super.key});

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // foregroundColor: Colors.white,
        title: Text('PatuDash', style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
          CircleAvatar(
            backgroundImage: AssetImage(
              'lib/images/1.jpg',
            ),
            // radius: 30,
          ),
          SizedBox(
            width: 8,
          ),
        ],
      ),
      drawer: MyDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Text(
              "Dashboard",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                StatsCard(
                  title: "Clients",
                  icon: Icons.people,
                  iconColor: Colors.deepPurple.shade300,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 12,
                ),
                StatsCard(
                  title: "Tasks",
                  icon: Icons.calendar_month,
                  iconColor: Colors.pink.shade400,
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              children: [
                StatsCard(
                  title: "Notifications",
                  icon: Icons.notifications,
                  iconColor: Colors.green.shade400,
                  onTap: () {},
                ),
                const SizedBox(
                  width: 12,
                ),
                StatsCard(
                  title: "Reports",
                  icon: Icons.warning,
                  iconColor: Colors.deepOrange.shade400,
                  onTap: () {},
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Line Chart"),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(child: MyLineChart()),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bar Chart"),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(child: MyBarChart()),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MyStatsCard(
                  icon: Icons.person,
                  iconColor: Colors.blue,
                ),
                SizedBox(
                  height: 8,
                ),
                MyStatsCard(
                  icon: Icons.person,
                  iconColor: Colors.pink,
                ),
                SizedBox(
                  height: 8,
                ),
                MyStatsCard(
                  icon: Icons.person,
                  iconColor: Colors.green,
                ),
                SizedBox(
                  height: 8,
                ),
                MyStatsCard(
                  icon: Icons.person,
                  iconColor: Colors.amber,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Pie Chart"),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(child: MyPieChart()),
                ],
              ),
            ),
          ),
          SizedBox(height: 8,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Container(
              padding: const EdgeInsets.all(12),
              height: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Theme.of(context).colorScheme.secondary,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Clients"),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        ClientTile(),
                        ClientTile(),
                        ClientTile(),
                        ClientTile(),
                        ClientTile(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 8,)
          // first 4 boxes in grid
          // AspectRatio(
          //   aspectRatio: 4,
          //   child: SizedBox(
          //     width: double.infinity,
          //     child: GridView.builder(
          //       itemCount: 4,
          //       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //           crossAxisCount: 4),
          //       itemBuilder: (context, index) {
          //         return MyBox();
          //       },
          //     ),
          //   ),
          // ),

          // list of previous days
          // Expanded(
          //   child: ListView.builder(
          //     itemCount: 6,
          //     itemBuilder: (context, index) {
          //       return const MyTile();
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
}
