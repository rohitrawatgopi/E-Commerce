import 'package:flutter/material.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(),
            title: Text("Matilda Brown"),
            subtitle: Text("matildabrown@mail.com"),
          ),
          ListTile(
            trailing: Icon(Icons.arrow_forward_ios),
            title: Text("My Orders"),
            subtitle: Text("Already have 12 orders"),
          )
        ],
      ),
    );
  }
}
