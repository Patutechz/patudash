import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patudash/themes/theme_provider.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // width: MediaQuery.of(context).size.width * .2,
      elevation: 2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                ),
                accountName: Text("Patrick Uche"),
                accountEmail: Text(
                  "Frontend Developer",
                  style: TextStyle(fontSize: 12, color: Colors.grey),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(
                    'lib/images/1.jpg',
                  ),
                  radius: 30,
                ),
              ),
              // const DrawerHeader(
              //   child: Column(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     // crossAxisAlignment: CrossAxisAlignment.start,
              //     children: [
              //       CircleAvatar(
              //         backgroundImage: AssetImage(
              //           'lib/images/1.jpg',
              //         ),
              //         radius: 30,
              //       ),
              //       SizedBox(
              //         height: 10,
              //       ),
              //       Text("Patrick Uche"),
              //       Text(
              //         "Frontend Developer",
              //         style: TextStyle(fontSize: 12, color: Colors.grey),
              //       ),
              //     ],
              //   ),
              //   // child: Icon(
              //   //   Icons.favorite,
              //   //   size: 64,
              //   // ),
              // ),
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: ListTile(
                  leading: Icon(
                    Icons.home,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('Dashboard',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 14,
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('Settings',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 14,
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: ListTile(
                  leading: Icon(
                    Icons.info,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  title: Text('About',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 14,
                      )),
                  onTap: () {},
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 0.0),
                child: ListTile(
                  leading: CupertinoSwitch(
                    activeColor: Colors.deepPurpleAccent,
                    value: Provider.of<ThemeProvider>(context, listen: false)
                        .isDarkMode,
                    onChanged: (value) =>
                        Provider.of<ThemeProvider>(context, listen: false)
                            .toggleTheme(),
                  ),
                  title: Text('Dark Mode',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 14,
                      )),
                  onTap: () {},
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 0.0),
            child: ListTile(
              leading: Icon(
                Icons.logout,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              title: Text(
                'Logout',
                style: TextStyle(
                  color: Theme.of(context).colorScheme.inversePrimary,
                  fontSize: 14,
                ),
              ),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
