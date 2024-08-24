import 'package:flutter/material.dart';

class MyBox extends StatelessWidget {
  const MyBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).colorScheme.secondary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(
              height: 10,
            ),
            Text("32", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,),),
            Text("Client", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary,),)
          ],
        ),
      ),
    );
  }
}
