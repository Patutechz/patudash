import 'package:flutter/material.dart';

class MyStatsCard extends StatelessWidget {
  final IconData? icon;
  final iconColor;
  const MyStatsCard({
    super.key,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Theme.of(context).colorScheme.secondary,
      ),
      child: Center(
        child: ListTile(
          leading: CircleAvatar(
            backgroundColor: iconColor,
            child: Icon(
              icon,
              size: 16,
            ),
          ),
          title: Text("Patrick Uche"),
          subtitle: Text("Mobile Developer"),
          trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
        ),
      ),
    );
  }
}
