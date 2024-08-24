import 'package:flutter/material.dart';

class StatsTile extends StatelessWidget {
  final String title;
  final IconData? icon;
  final void Function()? onTap;
  const StatsTile({
    super.key,
    required this.title,
    required this.icon,
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
                borderRadius: BorderRadius.circular(12)
          ),
          padding: EdgeInsets.all(8),
          child: Column(children: [
            CircleAvatar(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white,
              radius: 24,
              child: Icon(icon),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              title,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            )
          ]),
        ),
      ),
    );
  }
}
