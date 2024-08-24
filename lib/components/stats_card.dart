import 'package:flutter/material.dart';

class StatsCard extends StatelessWidget {
  final String title;
  final IconData? icon;
  final iconColor;
  final void Function()? onTap;

  const StatsCard({
    super.key,
    required this.title,
    required this.icon,
    required this.iconColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 0),
        child: ListTile(
          leading: CircleAvatar(
            radius: 18,
            backgroundColor: iconColor,
            foregroundColor: Colors.white,
            child: Icon(
              icon,
              size: 16,
            ),
          ),
          title: Text(
            "30",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(
            title,
            style: TextStyle(fontSize: 12),
          ),
          trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.more_vert,
                size: 18,
              )),
        ),
      ),
    ));
  }
}
