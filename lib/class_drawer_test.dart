import 'package:flutter/material.dart';

class DarweTest extends StatelessWidget {
  const DarweTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "ship");
              },
              title: Text("ship"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "addcityship");
              },
              title: Text("addcityship"),
            ),
          ),
          Card(
            child: ListTile(
              onTap: () {
                Navigator.pushNamed(context, "addship");
              },
              title: Text("addship"),
            ),
          ),
        ],
      ),
    );
  }
}
