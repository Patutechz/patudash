import 'package:flutter/material.dart';

class ClientTile extends StatelessWidget {
  const ClientTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: AssetImage(
          'lib/images/1.jpg',
        ),
      ),
      title: Text("Patrick Uche"),
      subtitle: Text("Mobile Developer"),
      trailing: IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
    );
  }
}
