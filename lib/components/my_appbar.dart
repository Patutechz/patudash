import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.secondary,
      // foregroundColor: Colors.white,
      title: Text('PatuDash'),
      centerTitle: false,
      actions: [
        CircleAvatar(
          backgroundImage: AssetImage(
            'lib/images/1.jpg',
          ),
          // radius: 30,
        ),
      ],
    );
  }
}
