import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patudash/components/bar_chart.dart';
import 'package:patudash/components/client_tile.dart';
import 'package:patudash/components/line_chart.dart';
import 'package:patudash/components/my_drawer.dart';
import 'package:patudash/components/my_stats_card.dart';
import 'package:patudash/components/pie_chart.dart';
import 'package:patudash/components/stats_card.dart';

class DesktopScaffold extends StatelessWidget {
  const DesktopScaffold({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurpleAccent,
        foregroundColor: Colors.white,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        // foregroundColor: Colors.white,
        title: Text(
          'PatuDash',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
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
      backgroundColor: Theme.of(context).colorScheme.background,
      // appBar: myAppBar,
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // open drawer
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8),
            child: MyDrawer(),
          ),
      
          // first half of page
          Expanded(
            // flex: 2,
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      const SizedBox(
                        width: 12,
                      ),
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
                      // const SizedBox(
                      //   width: 12,
                      // ),
                      // StatsTile(
                      //   title: "Cable Tv",
                      //   icon: Icons.tv,
                      //   onTap: () {},
                      // ),
                    ],
                  ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.start,
                //   children: [
                //     CupertinoSwitch(
                //       // activeColor: Colors.redAccent,
                //       value: Provider.of<ThemeProvider>(context, listen: false)
                //           .isDarkMode,
                //       onChanged: (value) =>
                //           Provider.of<ThemeProvider>(context, listen: false)
                //               .toggleTheme(),
                //     ),
                //   ],
                // ),
                // first 4 boxes in grid
                // AspectRatio(
                //   aspectRatio: 4,
                //   child: SizedBox(
                //     width: double.infinity,
                //     child: GridView.builder(
                //       itemCount: 4,
                //       gridDelegate:
                //           const SliverGridDelegateWithFixedCrossAxisCount(
                //         crossAxisCount: 4,
                //         childAspectRatio: 1 / 1,
                //       ),
                //       itemBuilder: (context, index) {
                //         return MyBox();
                //       },
                //     ),
                //   ),
                // ),
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        flex: 2,
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
                        width: 12,
                      ),
                      Expanded(
                        // flex: 1,
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
                    ],
                  ),
                ),
      
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        // flex: 2,
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
                        width: 12,
                      ),
                      Expanded(
                        // flex: 2,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          height: 400,
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
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        // flex: 1,
                        child: Container(
                          padding: const EdgeInsets.all(12),
                          height: 400,
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
                    ],
                  ),
                ),
      
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 100,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       color: Theme.of(context).colorScheme.secondary,
                //     ),
                //     child: Center(
                //       child: ListTile(
                //         leading: CircleAvatar(),
                //         title: Text("Patrick Uche"),
                //         subtitle: Text("Mobile Developer"),
                //         trailing: IconButton(
                //             onPressed: () {}, icon: Icon(Icons.more_vert)),
                //       ),
                //     ),
                //   ),
                // ),
      
                // SizedBox(
                //   height: 12,
                // ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     height: 400,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       color: Theme.of(context).colorScheme.secondary,
                //     ),
                //   ),
                // ),
      
                // list of previous days
                // Expanded(
                //   child: ListView.builder(
                //     itemCount: 7,
                //     itemBuilder: (context, index) {
                //       return const MyTile();
                //     },
                //   ),
                // ),
              ],
            ),
          ),
          // second half of page
          // Expanded(
          //   child: Column(
          //     children: [
          //       Padding(
          //         padding: const EdgeInsets.all(8.0),
          //         child: Container(
          //           height: 400,
          //           decoration: BoxDecoration(
          //             borderRadius: BorderRadius.circular(8),
          //             color: Theme.of(context).colorScheme.secondary,
          //           ),
          //         ),
          //       ),
      
          //       // list of stuff
          //       Expanded(
          //         child: Padding(
          //           padding: const EdgeInsets.all(8.0),
          //           child: Container(
          //             decoration: BoxDecoration(
          //               borderRadius: BorderRadius.circular(8),
          //               color: Theme.of(context).colorScheme.secondary,
          //             ),
          //             // child: Row(
          //             //   mainAxisAlignment: MainAxisAlignment.center,
          //             //   children: [
          //             //     Column(
          //             //       mainAxisAlignment: MainAxisAlignment.center,
          //             //       children: [
          //             //         CircleAvatar(
          //             //           backgroundImage: AssetImage(
          //             //             'lib/images/1.jpg',
          //             //           ),
          //             //           radius: 30,
          //             //         ),
          //             //         Text("Patrick Uche"),
          //             //         Text(
          //             //           "Frontend Developer",
          //             //           style: TextStyle(
          //             //               fontSize: 12, color: Colors.grey),
          //             //         )
          //             //       ],
          //             //     ),
          //             //   ],
          //             // ),
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }
}
