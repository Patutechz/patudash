import 'package:flutter/material.dart';
import 'package:patudash/responsive/laptop_body.dart';
import 'package:provider/provider.dart';
import 'package:patudash/responsive/desktop_body.dart';
import 'package:patudash/responsive/mobile_body.dart';
import 'package:patudash/responsive/responsive_layout.dart';
import 'package:patudash/responsive/tablet_body.dart';
import 'package:patudash/themes/theme_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PatuDash',
      theme: Provider.of<ThemeProvider>(context).themeData,
      // theme: darkMode,
      // darkTheme: darkMode,
      home: ResponsiveLayout(
        mobileBody: const MobileScaffold(),
        tabletBody: const TabletScaffold(),
        desktopBody: const DesktopScaffold(),
        laptopBody: const LaptopScaffold(),
      ),
    );
  }
}

